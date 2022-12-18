import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop/src/core/extension/extensions.dart';
import 'package:shop/src/core/resource/theme/sizes.dart';
import 'package:shop/src/core/router/app_router.dart';
import 'package:shop/src/core/widget/center_text.dart';
import 'package:shop/src/core/widget/search.dart';
import 'package:shop/src/feature/shop/shops_bloc/shops_bloc.dart';
import 'package:shop/src/feature/shop/widget/product_card.dart';
import 'package:shop/src/feature/shop/widget/products_list.dart';
import 'package:shop/src/feature/shop/widget/scope/shops_scope.dart';
import 'package:shop/src/feature/shop/widget/shop_card.dart';

class ShopsPage extends StatelessWidget {
  const ShopsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ShopsScope(
        child: Builder(
          builder: (context) => Scaffold(
            body: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                const SizedBox(height: 30),
                SearchWidget(
                  onChanged: (query) => BlocProvider.of<ShopsBloc>(context).add(
                    ShopsEvent.searchProduct(query: query),
                  ),
                  hint: 'Search for a product in all shops',
                ),
                const SizedBox(height: 20),
                BlocBuilder<ShopsBloc, ShopsState>(
                  builder: (context, state) => state.when(
                    loading: (data) => const Center(
                      child: CircularProgressIndicator(
                        color: Colors.black,
                      ),
                    ),
                    loadSuccess: (data) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: kDefaultPadding,
                            vertical: 5,
                          ),
                          child: Text(
                            'Available Shops',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) => ShopCardWidget(
                            shop: data.shops[index],
                            onTap: () => context.router.push(
                              ShopProductsRoute(shop: data.shops[index]),
                            ),
                          ),
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 5),
                          itemCount: data.shops.length,
                        )
                      ],
                    ),
                    loadFailure: (data, error) => CenterText(text: error),
                    searchFailure: (data, error) => CenterText(text: error),
                    searchSuccess: (data, products) => Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Search Results',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 5),
                          ProductsListWidget(products: products),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
