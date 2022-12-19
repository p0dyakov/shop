import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget(
    this.text, {
    Key? key,
    this.horizontalPadding = 0,
  }) : super(key: key);

  final String text;
  final double horizontalPadding;

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.only(
          bottom: 5,
          left: horizontalPadding,
          right: horizontalPadding,
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.left,
        ),
      );
}
