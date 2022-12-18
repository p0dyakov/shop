import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop/src/feature/shop/model/product.dart';
import 'package:shop/src/feature/shop/model/shop.dart';
import 'package:shop/src/feature/shop/model/shop_data.dart';
import 'package:shop/src/feature/shop/repository/shop_repository_interface.dart';
import 'package:stream_bloc/stream_bloc.dart';

part 'products_event.dart';
part 'products_state.dart';
part 'products_bloc.freezed.dart';

class ProductsBloc extends StreamBloc<ProductsEvent, ProductsState> {
  late final Shop _shop;

  ProductsBloc(
    Shop shop,
  )   : _shop = shop,
        super(_Initial(shop: shop));

  @override
  Stream<ProductsState> mapEventToStates(ProductsEvent event) => event.when(
        searchProduct: _seachProduct,
      );

  Stream<ProductsState> _seachProduct(String query) => _performMutation(
        () async {
          if (query.isEmpty) return _Initial(shop: _shop);

          final results = <Product>[];

          for (final product in _shop.products) {
            if (product.name.toLowerCase().contains(query.toLowerCase())) {
              results.add(product);
            }
          }

          if (results.isEmpty) {
            return _SearchFailure(
              error: 'Nothing found',
              shop: _shop,
            );
          }

          return _SearchSuccess(
            results: results,
            shop: _shop,
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
      yield _Failure(shop: _shop, error: e.toString());
    }
  }
}
