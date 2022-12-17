part of 'shop_bloc.dart';

@freezed
class ShopEvent with _$ShopEvent {
  const factory ShopEvent.getShops() = _GetShops;
  const factory ShopEvent.getStoredShops() = _GetRestoredShops;
}
