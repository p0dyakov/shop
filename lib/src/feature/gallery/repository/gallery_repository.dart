import 'package:flutter/services.dart';
import 'package:photo_editor/src/feature/gallery/repository/gallery_repository_interface.dart';
import 'package:photo_manager/photo_manager.dart';

class GalleryRepository implements IGalleryRepository {
  @override
  Future<bool> requestPermission() async {
    final state = await PhotoManager.requestPermissionExtend();

    return state.isAuth;
  }

  @override
  Future<void> deleteImages(List<String> ids) async {
    final result = await PhotoManager.editor.deleteWithIds(ids);
    if (result.isEmpty) {
      throw Exception("Can't delete images");
    }
  }

  @override
  void addChangeCallback(void Function(MethodCall call) fn) {
    PhotoManager.addChangeCallback(fn);
  }

  @override
  void startChangeNotify() {
    PhotoManager.startChangeNotify();
  }

  @override
  void stopChangeNotify() {
    PhotoManager.stopChangeNotify();
  }

  @override
  Future<AssetPathEntity> getRootFolder() async {
    final folders = await PhotoManager.getAssetPathList(onlyAll: true);

    return folders.first;
  }

  @override
  Future<List<AssetEntity>> loadImages(
    AssetPathEntity folder,
    int page,
    int size,
  ) async =>
      folder.getAssetListPaged(page: page, size: size);
}
