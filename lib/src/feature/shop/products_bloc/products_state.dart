part of 'products_bloc.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState.initial({
    required ProductsData data,
  }) = _Initial;
  const factory ProductsState.failure({
    required ProductsData data,
    required String error,
  }) = _Failure;
  const factory ProductsState.searchSuccess({
    required List<Product> results,
    required ProductsData data,
  }) = _SearchSuccess;
}
