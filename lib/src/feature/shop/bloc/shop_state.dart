part of 'shop_bloc.dart';

@freezed
class ShopState with _$ShopState {
  const factory ShopState.loading({
    required ShopData data,
  }) = _Loading;
  const factory ShopState.loadSuccess({
    required ShopData data,
  }) = _LoadSuccess;
  const factory ShopState.loadFailure({
    required ShopData data,
    required String error,
  }) = _LoadFailure;
  const factory ShopState.searchSuccess({
    required ShopData data,
    required List<Product> products,
  }) = _SearchSuccess;
  const factory ShopState.searchFailure({
    required ShopData data,
  }) = _SearchFailure;
}
