part of 'products_bloc.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState.initial({
    required Shop shop,
  }) = _Initial;
  const factory ProductsState.failure({
    required Shop shop,
    required String error,
  }) = _Failure;
  const factory ProductsState.searchSuccess({
    required Shop shop,
    required List<Product> results,
  }) = _SearchSuccess;
  const factory ProductsState.searchFailure({
    required Shop shop,
    required String error,
  }) = _SearchFailure;
}
