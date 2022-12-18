import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/src/core/resource/theme/sizes.dart';
import 'package:shop/src/core/widget/center_text.dart';
import 'package:shop/src/core/widget/search.dart';
import 'package:shop/src/feature/shop/products_bloc/products_bloc.dart';
import 'package:shop/src/feature/shop/shops_bloc/shops_bloc.dart';
import 'package:shop/src/feature/shop/model/shop.dart';
import 'package:shop/src/feature/shop/widget/delivery_info.dart';
import 'package:shop/src/feature/shop/widget/product_card.dart';
import 'package:shop/src/feature/shop/widget/products_list.dart';
import 'package:shop/src/feature/shop/widget/scope/products_scope.dart';
import 'package:shop/src/feature/shop/widget/scope/shops_scope.dart';
import 'package:shop/src/feature/shop/widget/shop_card.dart';

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
                SearchWidget(
                  onChanged: (query) =>
                      BlocProvider.of<ProductsBloc>(context).add(
                    ProductsEvent.searchProduct(query: query),
                  ),
                  hint: 'Search for a product in ${shop.name}',
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
                          initial: (shop) =>
                              ProductsListWidget(products: shop.products),
                          failure: (shop, error) => CenterText(text: error),
                          searchSuccess: (shop, results) =>
                              ProductsListWidget(products: results),
                          searchFailure: (shop, error) =>
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
