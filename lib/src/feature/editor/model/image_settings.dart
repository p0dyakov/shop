import 'package:bitmap/bitmap.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:photo_manager/photo_manager.dart';

part 'image_settings.freezed.dart';

@freezed
class ImageSettings with _$ImageSettings {
  factory ImageSettings({
    required AssetEntity image,
    required List<BitmapOperation> operations,
  }) = _ImageSettings;
}
