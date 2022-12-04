import 'package:flutter/animation.dart';
import 'package:flutter/services.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:retrofit/http.dart';

abstract class IGalleryRepository {
  Future<bool> requestPermission();
  void addChangeCallback(void Function(MethodCall call) fn);
  void startChangeNotify();
  void stopChangeNotify();
  Future<void> deleteImages(List<String> ids);
  Future<List<AssetPathEntity>> loadImages();
}
