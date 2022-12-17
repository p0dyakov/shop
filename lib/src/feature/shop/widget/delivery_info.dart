import 'package:flutter/material.dart';

class DeliveryInfoWidget extends StatelessWidget {
  const DeliveryInfoWidget({
    Key? key,
    required this.deliveryTime,
    required this.deliveryPrice,
    this.color = Colors.black,
  }) : super(key: key);

  final Duration deliveryTime;
  final double deliveryPrice;
  final Color color;

  @override
  Widget build(BuildContext context) => Text(
        '${deliveryTime.inMinutes} minutes · from $deliveryPrice ₽',
        overflow: TextOverflow.fade,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: color,
        ),
      );
}
