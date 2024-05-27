import 'package:flutter/material.dart';
import 'package:shop/src/core/extension/extensions.dart';
import 'package:shop/src/core/router/app_router.dart';
import 'package:shop/src/feature/shop/model/shop/shop.dart';
import 'package:shop/src/feature/shop/widget/shop_card.dart';

class ShopsBuilder extends StatelessWidget {
  const ShopsBuilder({
    required this.shops,
    Key? key,
  }) : super(key: key);

  final List<Shop> shops;

  @override
  Widget build(BuildContext context) => ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => ShopCardWidget(
          shop: shops[index],
          onTap: () => context.router.push(
            ShopProductsRoute(shop: shops[index]),
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 5),
        itemCount: shops.length,
      );
}
