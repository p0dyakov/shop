import 'package:flutter/material.dart';
import 'package:shop/src/feature/shop/model/product.dart';
import 'package:shop/src/feature/shop/model/shop.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            child: Image(
              image: NetworkImage(product.photoUrl),
              height: 160,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.name,
                style: const TextStyle(
                  fontSize: 13,
                ),
              ),
              Text(
                '${product.characteristic.weight} grams',
                style: const TextStyle(
                  fontSize: 13,
                ),
              ),
            ],
          )
        ],
      );
}
