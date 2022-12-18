import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/src/feature/shop/model/shop/shop.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

part 'products_data.freezed.dart';

@freezed
class ProductsData with _$ProductsData {
  factory ProductsData({
    required Shop shop,
    required String query,
    required SfRangeValues weightValues,
    required SfRangeValues priceValues,
  }) = _ProductsData;

  factory ProductsData.initial(Shop shop) => ProductsData(
        query: '',
        shop: shop,
        weightValues: const SfRangeValues(0, 1000),
        priceValues: const SfRangeValues(0, 1000),
      );
}
