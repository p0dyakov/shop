part of 'shops_bloc.dart';

@freezed
class ShopsEvent with _$ShopsEvent {
  const factory ShopsEvent.getShops() = _GetShops;
  const factory ShopsEvent.getStoredShops() = _GetRestoredShops;
  const factory ShopsEvent.searchProduct({
    required String query,
    required SfRangeValues weightValues,
    required SfRangeValues priceValues,
  }) = _SearchProduct;
}
