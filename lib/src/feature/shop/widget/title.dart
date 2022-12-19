import 'package:flutter/material.dart';
import 'package:shop/src/core/resources/theme/sizes.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget(this.text, {Key? key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
          vertical: 5,
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      );
}
