import 'package:flutter/material.dart';
import 'package:shop/src/core/resource/theme/sizes.dart';
import 'package:shop/src/core/widget/search.dart';
import 'package:shop/src/feature/shop/model/shop.dart';
import 'package:shop/src/feature/shop/widget/delivery_info.dart';
import 'package:shop/src/feature/shop/widget/product_card.dart';
import 'package:shop/src/feature/shop/widget/shop_card.dart';

class ShopProductsPage extends StatelessWidget {
  const ShopProductsPage({
    Key? key,
    required this.shop,
  }) : super(key: key);

  final Shop shop;

  @override
  Widget build(BuildContext context) => Scaffold(
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
              onSubmit: () {},
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
                  GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    childAspectRatio: (1 / 1.25),
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    children: List.generate(
                      shop.products.length,
                      (index) =>
                          ProductCardWidget(product: shop.products[index]),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
