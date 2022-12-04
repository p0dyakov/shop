import 'package:flutter/material.dart';
import 'package:photo_editor/src/core/resource/theme/sizes.dart';

class PermissionWidget extends StatelessWidget {
  const PermissionWidget({
    required this.onTap,
    required this.text,
    Key? key,
  }) : super(key: key);

  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding,
            vertical: 8,
          ),
          color: const Color.fromARGB(255, 238, 238, 238),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: const TextStyle(fontSize: 17),
                overflow: TextOverflow.clip,
              ),
              const Icon(
                Icons.keyboard_arrow_right_rounded,
                size: 29,
              ),
            ],
          ),
        ),
      );
}
