part of 'gallery_bloc.dart';

@freezed
class GalleryState with _$GalleryState {
  const factory GalleryState.grantPermissions() = _GrantPermissions;
  const factory GalleryState.loading() = _Loading;
  const factory GalleryState.loadFailure(String error) = _LoadFailure;
  const factory GalleryState.loadImagesSuccess(
    AssetPathEntity folders,
    List<AssetEntity> images,
  ) = _LoadImagesSuccess;
  const factory GalleryState.loadFoldersSuccess(List<AssetPathEntity> folders) =
      _LoadFoldersSuccess;
}
