part of 'shops_bloc.dart';

@freezed
class ShopsState with _$ShopsState {
  const factory ShopsState.loading({
    required ShopsData data,
  }) = _Loading;
  const factory ShopsState.loadSuccess({
    required ShopsData data,
  }) = _LoadSuccess;
  const factory ShopsState.failure({
    required ShopsData data,
    required String error,
  }) = _Failure;
  const factory ShopsState.searchSuccess({
    required ShopsData data,
    required List<Product> results,
  }) = _SearchSuccess;
}
