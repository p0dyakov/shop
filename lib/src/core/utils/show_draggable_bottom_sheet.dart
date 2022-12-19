import 'package:flutter/material.dart';
import 'package:shop/src/core/resources/theme/sizes.dart';

Future<void> showDraggableBottomSheet({
  required Widget child,
  required BuildContext context,
}) =>
    showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.black.withOpacity(0.48),
      builder: (context) => ConstrainedBox(
        constraints: const BoxConstraints(
          minHeight: 120,
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 245, 245, 245),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          padding: const EdgeInsets.only(
            left: kDefaultPadding,
            right: kDefaultPadding,
            bottom: 30,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 8),
              Container(
                height: 4,
                width: 44,
                decoration: const BoxDecoration(
                  color: Color(0xFFDEDEDE),
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
              ),
              const SizedBox(height: 24),
              child
            ],
          ),
        ),
      ),
    );
