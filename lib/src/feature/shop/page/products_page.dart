import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/src/core/resource/theme/sizes.dart';
import 'package:shop/src/core/widget/center_text.dart';
import 'package:shop/src/core/widget/search.dart';
import 'package:shop/src/feature/shop/model/shop/shop.dart';
import 'package:shop/src/feature/shop/products_bloc/products_bloc.dart';
import 'package:shop/src/feature/shop/widget/delivery_info.dart';
import 'package:shop/src/feature/shop/widget/products_list.dart';
import 'package:shop/src/feature/shop/widget/scope/products_scope.dart';
import 'package:shop/src/feature/shop/widget/shop_card.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class ShopProductsPage extends StatelessWidget {
  const ShopProductsPage({
    Key? key,
    required this.shop,
  }) : super(key: key);

  final Shop shop;

  @override
  Widget build(BuildContext context) => ProductsScope(
        shop: shop,
        child: Builder(
          builder: (context) => Scaffold(
            body: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                const SizedBox(height: 30),
                ShopCardWidget(
                  shop: shop,
                  descriptionMaxLines: 3,
                  backgroundColor: Colors.transparent,
                  showDeliveryInfo: false,
                  onTap: () {},
                ),
                const SizedBox(height: 20),
                BlocBuilder<ProductsBloc, ProductsState>(
                  builder: (context, state) {
                    final weightValues = state.data.weightValues;
                    final priceValues = state.data.priceValues;
                    final query = state.data.query;

                    return SearchWidget(
                      hint: 'Search for a product in ${shop.name}',
                      weightValues: weightValues,
                      priceValues: priceValues,
                      onQueryChanged: (String query) =>
                          BlocProvider.of<ProductsBloc>(context).add(
                        ProductsEvent.searchProduct(
                          query: query,
                          weightValues: weightValues,
                          priceValues: priceValues,
                        ),
                      ),
                      onFiltersChanged: (
                        SfRangeValues weightValues,
                        SfRangeValues priceValues,
                      ) =>
                          BlocProvider.of<ProductsBloc>(context).add(
                        ProductsEvent.changeValues(
                          weightValues: weightValues,
                          priceValues: priceValues,
                        ),
                      ),
                      onFiltersChangeEnd: (
                        SfRangeValues weightValues,
                        SfRangeValues priceValues,
                      ) =>
                          BlocProvider.of<ProductsBloc>(context).add(
                        ProductsEvent.searchProduct(
                          query: query,
                          weightValues: weightValues,
                          priceValues: priceValues,
                        ),
                      ),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                    top: 3,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DeliveryInfoWidget(
                        color: Colors.grey,
                        deliveryPrice: shop.deliveryPrice,
                        deliveryTime: shop.deliveryTime,
                      ),
                      const SizedBox(height: 20),
                      BlocBuilder<ProductsBloc, ProductsState>(
                        builder: (context, state) => state.when(
                          initial: (data) =>
                              ProductsListWidget(products: data.shop.products),
                          failure: (data, error) => CenterText(text: error),
                          searchSuccess: (results, data) =>
                              ProductsListWidget(products: results),
                          searchFailure: (data, error) =>
                              CenterText(text: error),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
