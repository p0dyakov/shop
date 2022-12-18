part of 'shops_bloc.dart';

@freezed
class ShopsState with _$ShopsState {
  const factory ShopsState.loading({
    required ShopData data,
  }) = _Loading;
  const factory ShopsState.loadSuccess({
    required ShopData data,
  }) = _LoadSuccess;
  const factory ShopsState.loadFailure({
    required ShopData data,
    required String error,
  }) = _LoadFailure;
  const factory ShopsState.searchSuccess({
    required ShopData data,
    required List<Product> results,
  }) = _SearchSuccess;
  const factory ShopsState.searchFailure({
    required ShopData data,
    required String error,
  }) = _SearchFailure;
}
