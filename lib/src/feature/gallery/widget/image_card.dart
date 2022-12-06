import 'package:flutter/material.dart';
import 'package:photo_editor/src/feature/gallery/widget/image_card_placeholder.dart';
import 'package:photo_manager/photo_manager.dart';

class ImageCardWidget extends StatelessWidget {
  const ImageCardWidget({Key? key, required this.image}) : super(key: key);

  final AssetEntity image;

  @override
  Widget build(BuildContext context) => AssetEntityImage(
        image,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) =>
            ImageCardPlaceholderWidget(child: child),
        isOriginal: false,
      );
}
