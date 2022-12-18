import 'package:flutter/material.dart';
import 'package:shop/src/feature/shop/model/product/product.dart';

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
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 5),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                decoration: BoxDecoration(
                  color: const Color(0xFFCECECE).withOpacity(0.50),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: Text(
                  '${product.characteristic.price}₽',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 61, 61, 61),
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          )
        ],
      );
}
