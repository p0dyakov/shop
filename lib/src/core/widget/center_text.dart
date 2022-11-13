import 'package:flutter/material.dart';
import 'package:offline_messenger/src/core/resource/theme/sizes.dart';

class CenterText extends StatelessWidget {
  const CenterText({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) => Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            text,
            style: const TextStyle(fontSize: 20),
            overflow: TextOverflow.clip,
            textAlign: TextAlign.center,
          ),
        ),
      );
}
