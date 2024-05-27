import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/src/core/extension/extensions.dart';
import 'package:shop/src/feature/app/logic/logger.dart';
import 'package:shop/src/feature/shop/model/product/product.dart';
import 'package:shop/src/feature/shop/model/shop_data/shop_data.dart';
import 'package:shop/src/feature/shop/repository/shop_repository_interface.dart';
import 'package:stream_bloc/stream_bloc.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

part 'shops_bloc.freezed.dart';
part 'shops_event.dart';
part 'shops_state.dart';

class ShopsBloc extends StreamBloc<ShopsEvent, ShopsState> {
  final IShopRepository _shopRepository;

  ShopsBloc(
    IShopRepository shopRepository,
  )   : _shopRepository = shopRepository,
        super(_Loading(data: ShopsData.initial())) {
    add(const ShopsEvent.getStoredShops());
    add(const ShopsEvent.getShops());
  }

  ShopsData get _data => state.data;

  @override
  Stream<ShopsState> mapEventToStates(ShopsEvent event) => event.when(
        getStoredShops: _getStoredShops,
        getShops: _getShops,
        searchProduct: _seachProduct,
        changeValues: _changeValues,
      );

  Stream<ShopsState> _changeValues(
    SfRangeValues weightValues,
    SfRangeValues priceValues,
  ) =>
      _performMutation(
        () async => state.copyWith(
          data: _data.copyWith(
            priceValues: priceValues,
            weightValues: weightValues,
          ),
        ),
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

  Stream<ShopsState> _seachProduct(
    String query,
    SfRangeValues weightValues,
    SfRangeValues priceValues,
  ) =>
      _performMutation(
        () async {
          if (query.isEmpty && weightValues.isInitial && priceValues.isInitial) {
            return _LoadSuccess(data: _data);
          }

          final results = <Product>[];

          for (final shop in _data.shops) {
            for (final product in shop.products) {
              if (weightValues.contains(product.characteristic.weight) &&
                  priceValues.contains(product.characteristic.price) &&
                  product.name.toLowerCase().contains(query.toLowerCase())) {
                results.add(product);
              }
            }
          }

          if (results.isEmpty) {
            return _Failure(
              data: _data,
              error: 'Nothing found',
            );
          }

          return _SearchSuccess(
            results: results,
            data: ShopsData(
              priceValues: priceValues,
              weightValues: weightValues,
              query: query,
              shops: _data.shops,
            ),
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
      Logger.logError(e);
      yield _Failure(data: _data, error: e.toString());
    }
  }
}
