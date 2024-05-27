import 'package:flutter/material.dart';
import 'package:shop/src/feature/shop/model/product/product.dart';
import 'package:shop/src/feature/shop/widget/product_card.dart';

class ProductsBuilder extends StatelessWidget {
  const ProductsBuilder({
    required this.products,
    Key? key,
  }) : super(key: key);

  final List<Product> products;

  @override
  Widget build(BuildContext context) => GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        childAspectRatio: 1 / 1.4,
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        children: List.generate(
          products.length,
          (index) => ProductCardWidget(product: products[index]),
        ),
      );
}
