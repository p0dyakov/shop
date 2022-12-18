part of 'products_bloc.dart';

@freezed
class ProductsEvent with _$ProductsEvent {
  const factory ProductsEvent.searchProduct({required String query}) =
      _SearchProduct;
}
