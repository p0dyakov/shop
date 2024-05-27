import 'package:flutter/material.dart';
import 'package:shop/src/core/resource/sizes.dart';

class CenterText extends StatelessWidget {
  const CenterText({
    required this.text,
    Key? key,
    this.color = Colors.black,
  }) : super(key: key);

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) => Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
              color: color,
            ),
            overflow: TextOverflow.clip,
            textAlign: TextAlign.center,
          ),
        ),
      );
}
