import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/src/core/extension/extensions.dart';
import 'package:shop/src/feature/app/logic/logger.dart';
import 'package:shop/src/feature/shop/model/product/product.dart';
import 'package:shop/src/feature/shop/model/products_data/products_data.dart';
import 'package:shop/src/feature/shop/model/shop/shop.dart';
import 'package:stream_bloc/stream_bloc.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

part 'products_event.dart';
part 'products_state.dart';
part 'products_bloc.freezed.dart';

class ProductsBloc extends StreamBloc<ProductsEvent, ProductsState> {
  late final Shop _shop;

  ProductsBloc(
    Shop shop,
  )   : _shop = shop,
        super(_Initial(data: ProductsData.initial(shop)));

  ProductsData get _data => state.data;

  @override
  Stream<ProductsState> mapEventToStates(ProductsEvent event) => event.when(
        searchProduct: _seachProduct,
        changeValues: _changeValues,
      );

  Stream<ProductsState> _changeValues(
    SfRangeValues weightValues,
    SfRangeValues priceValues,
  ) =>
      _performMutation(
        () async => state.copyWith(
          data: _data.copyWith(
            priceValues: priceValues,
            weightValues: weightValues,
          ),
        ),
      );

  Stream<ProductsState> _seachProduct(
    String query,
    SfRangeValues weightValues,
    SfRangeValues priceValues,
  ) =>
      _performMutation(
        () async {
          if (query.isEmpty && weightValues.isInitial && priceValues.isInitial) {
            return _Initial(data: ProductsData.initial(_shop));
          }

          final results = <Product>[];

          for (final product in _shop.products) {
            if (weightValues.contains(product.characteristic.weight) &&
                priceValues.contains(product.characteristic.price) &&
                product.name.toLowerCase().contains(query.toLowerCase())) {
              results.add(product);
            }
          }

          if (results.isEmpty) {
            return _Failure(
              error: 'Nothing found',
              data: _data,
            );
          }

          return _SearchSuccess(
            results: results,
            data: ProductsData(
              priceValues: priceValues,
              weightValues: weightValues,
              query: query,
              shop: _shop,
            ),
          );
        },
      );

  Stream<ProductsState> _performMutation(
    Future<ProductsState> Function() body,
  ) async* {
    try {
      final newState = await body();
      yield newState;
    } on Object catch (e) {
      Logger.logError(e);
      yield _Failure(data: ProductsData.initial(_shop), error: e.toString());
    }
  }
}
