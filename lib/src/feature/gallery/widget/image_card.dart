import 'package:flutter/material.dart';
import 'package:photo_editor/src/feature/gallery/widget/image_card_placeholder.dart';
import 'package:photo_manager/photo_manager.dart';

class ImageCardWidget extends StatelessWidget {
  const ImageCardWidget({
    Key? key,
    required this.image,
    required this.onTap,
  }) : super(key: key);

  final AssetEntity image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: onTap,
        child: AssetEntityImage(
          image,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) =>
              ImageCardPlaceholderWidget(child: child),
          isOriginal: false,
        ),
      );
}
