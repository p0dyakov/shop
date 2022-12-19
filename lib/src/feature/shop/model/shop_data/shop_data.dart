import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/src/feature/shop/model/shop/shop.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

part 'shop_data.freezed.dart';

@freezed
class ShopData with _$ShopData {
  factory ShopData({
    required List<Shop> shops,
    required String query,
    required SfRangeValues weightValues,
    required SfRangeValues priceValues,
  }) = _ShopData;

  factory ShopData.initial() => ShopData(
        query: '',
        shops: [],
        weightValues: const SfRangeValues(0, 1000),
        priceValues: const SfRangeValues(0, 1000),
      );
}
