part of 'products_bloc.dart';

@freezed
class ProductsEvent with _$ProductsEvent {
  const factory ProductsEvent.searchProduct({
    required String query,
    required SfRangeValues weightValues,
    required SfRangeValues priceValues,
  }) = _SearchProduct;
  const factory ProductsEvent.changeValues({
    required SfRangeValues weightValues,
    required SfRangeValues priceValues,
  }) = _ChangeValues;
}
