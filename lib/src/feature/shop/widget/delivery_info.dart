import 'package:flutter/material.dart';

class DeliveryInfoWidget extends StatelessWidget {
  const DeliveryInfoWidget({
    required this.deliveryTime,
    required this.deliveryPrice,
    Key? key,
    this.color = Colors.black,
  }) : super(key: key);

  final int deliveryTime;
  final int deliveryPrice;
  final Color color;

  @override
  Widget build(BuildContext context) => Text(
        '$deliveryTime minutes · from $deliveryPrice₽',
        overflow: TextOverflow.fade,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: color,
        ),
      );
}
