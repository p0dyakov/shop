import 'package:freezed_annotation/freezed_annotation.dart';
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
        super(const _Loading());

  @override
  Stream<ShopState> mapEventToStates(ShopEvent event) =>
      event.when(getProducts: _getProducts);

  Stream<ShopState> _getProducts() => _performMutation(
        () async => const _LoadSuccess(),
      );

  Stream<ShopState> _performMutation(
    Future<void> Function() body,
  ) async* {
    yield const _Loading();
    try {
      await body();
      yield const _LoadSuccess();
    } on Object catch (e) {
      yield _LoadFailure(error: e.toString());
      rethrow;
    }
  }
}
