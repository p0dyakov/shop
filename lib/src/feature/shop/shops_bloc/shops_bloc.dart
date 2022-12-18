import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/src/feature/shop/model/product.dart';
import 'package:shop/src/feature/shop/model/shop.dart';
import 'package:shop/src/feature/shop/model/shop_data.dart';
import 'package:shop/src/feature/shop/repository/shop_repository_interface.dart';
import 'package:stream_bloc/stream_bloc.dart';

part 'shops_event.dart';
part 'shops_state.dart';
part 'shops_bloc.freezed.dart';

class ShopsBloc extends StreamBloc<ShopsEvent, ShopsState> {
  final IShopRepository _shopRepository;

  ShopsBloc(
    IShopRepository shopRepository,
  )   : _shopRepository = shopRepository,
        super(_Loading(data: ShopData.empty())) {
    add(const ShopsEvent.getStoredShops());
    add(const ShopsEvent.getShops());
  }

  ShopData get _data => state.data;

  @override
  Stream<ShopsState> mapEventToStates(ShopsEvent event) => event.when(
        getStoredShops: _getStoredShops,
        getShops: _getShops,
        searchProduct: _seachProduct,
      );

  Stream<ShopsState> _getStoredShops() => _performMutation(
        () async {
          final storedShops = await _shopRepository.storedShops;
          if (storedShops != null) {
            return _LoadSuccess(
              data: _data.copyWith(shops: storedShops),
            );
          }

          return _Loading(data: _data);
        },
      );

  Stream<ShopsState> _seachProduct(String query) => _performMutation(
        () async {
          if (query.isEmpty) return _LoadSuccess(data: _data);

          final results = <Product>[];

          for (final shop in _data.shops) {
            for (final product in shop.products) {
              if (product.name.toLowerCase().contains(query.toLowerCase())) {
                results.add(product);
              }
            }
          }

          if (results.isEmpty) {
            return _SearchFailure(
              data: _data,
              error: 'Nothing found',
            );
          }

          return _SearchSuccess(
            data: _data,
            results: results,
          );
        },
      );

  Stream<ShopsState> _getShops() => _performMutation(
        () async {
          final storedShops = await _shopRepository.shops;

          return _LoadSuccess(
            data: _data.copyWith(shops: storedShops),
          );
        },
      );

  Stream<ShopsState> _performMutation(
    Future<ShopsState> Function() body,
  ) async* {
    try {
      final newState = await body();
      yield newState;
    } on Object catch (e) {
      yield _LoadFailure(data: _data, error: e.toString());
    }
  }
}
