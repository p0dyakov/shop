import 'package:flutter/material.dart';
import 'package:shop/src/core/resource/sizes.dart';
import 'package:shop/src/feature/shop/model/shop/shop.dart';
import 'package:shop/src/feature/shop/widget/delivery_info.dart';

class ShopCardWidget extends StatelessWidget {
  const ShopCardWidget({
    required this.shop,
    required this.onTap,
    Key? key,
    this.descriptionMaxLines = 1,
    this.backgroundColor = Colors.white,
    this.showDeliveryInfo = true,
  }) : super(key: key);

  final Shop shop;
  final int descriptionMaxLines;
  final VoidCallback onTap;
  final Color backgroundColor;
  final bool showDeliveryInfo;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: onTap,
        child: Container(
          color: backgroundColor,
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                child: Image(
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    shop.photoUrl,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shop.name,
                      style: const TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      shop.description,
                      overflow: TextOverflow.ellipsis,
                      maxLines: descriptionMaxLines,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Visibility(
                      visible: showDeliveryInfo,
                      child: DeliveryInfoWidget(
                        deliveryPrice: shop.deliveryPrice,
                        deliveryTime: shop.deliveryTimeInMinutes,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
