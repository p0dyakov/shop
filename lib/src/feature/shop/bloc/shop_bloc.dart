import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/src/feature/shop/model/product.dart';
import 'package:shop/src/feature/shop/model/shop_data.dart';
import 'package:shop/src/feature/shop/repository/shop_repository_interface.dart';
import 'package:stream_bloc/stream_bloc.dart';

part 'shop_event.dart';
part 'shop_state.dart';
part 'shop_bloc.freezed.dart';

class ShopBloc extends StreamBloc<ShopEvent, ShopState> {
  final IShopRepository _shopRepository;

  ShopBloc(
    IShopRepository shopRepository,
  )   : _shopRepository = shopRepository,
        super(_Loading(data: ShopData.empty())) {
    add(const ShopEvent.getStoredShops());
    add(const ShopEvent.getShops());
  }

  ShopData get _data => state.data;

  @override
  Stream<ShopState> mapEventToStates(ShopEvent event) => event.when(
        getStoredShops: _getStoredShops,
        getShops: _getShops,
      );

  Stream<ShopState> _getStoredShops() => _performMutation(
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

  Stream<ShopState> _getShops() => _performMutation(
        () async {
          final storedShops = await _shopRepository.shops;

          return _LoadSuccess(
            data: _data.copyWith(shops: storedShops),
          );
        },
      );

  Stream<ShopState> _performMutation(
    Future<ShopState> Function() body,
  ) async* {
    try {
      final newState = await body();
      yield newState;
    } on Object catch (e) {
      yield _LoadFailure(data: _data, error: e.toString());
    }
  }
}
