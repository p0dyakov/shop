import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/src/core/resources/theme/sizes.dart';
import 'package:shop/src/core/widget/search.dart';
import 'package:shop/src/feature/shop/model/shop/shop.dart';
import 'package:shop/src/feature/shop/products_bloc/products_bloc.dart';
import 'package:shop/src/feature/shop/widget/delivery_info.dart';
import 'package:shop/src/feature/shop/widget/filters.dart';
import 'package:shop/src/feature/shop/widget/products_builder.dart';
import 'package:shop/src/feature/shop/widget/scope/products_scope.dart';
import 'package:shop/src/feature/shop/widget/shop_card.dart';
import 'package:shop/src/feature/shop/widget/title.dart';
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
        child: BlocBuilder<ProductsBloc, ProductsState>(
          builder: (context, state) => Scaffold(
            body: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  ShopCardWidget(
                    shop: shop,
                    descriptionMaxLines: 3,
                    backgroundColor: Colors.transparent,
                    showDeliveryInfo: false,
                    onTap: () {},
                  ),
                  const SizedBox(height: 20),
                  SearchWidget(
                    hint: 'Search for a product in ${shop.name}',
                    onChanged: (String query) =>
                        BlocProvider.of<ProductsBloc>(context).add(
                      ProductsEvent.searchProduct(
                        query: query,
                        weightValues: state.data.weightValues,
                        priceValues: state.data.priceValues,
                      ),
                    ),
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
                          deliveryTime: shop.deliveryTimeInMinutes,
                        ),
                        const SizedBox(height: 20),
                        FiltersWidget(
                          weightValues: state.data.weightValues,
                          priceValues: state.data.priceValues,
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
                              query: state.data.query,
                              weightValues: weightValues,
                              priceValues: priceValues,
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        state.when(
                          failure: (data, error) => TitleWidget(error),
                          initial: (data) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const TitleWidget('All products'),
                              ProductsBuilder(products: data.shop.products),
                            ],
                          ),
                          searchSuccess: (results, data) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const TitleWidget('Search Results'),
                              ProductsBuilder(products: results),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
