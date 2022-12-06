part of 'gallery_bloc.dart';

@freezed
class GalleryState with _$GalleryState {
  const factory GalleryState.grantPermissions() = _GrantPermissions;
  const factory GalleryState.loading() = _Loading;
  const factory GalleryState.loadFailure(String error) = _LoadFailure;
  const factory GalleryState.loadSuccess(
    List<AssetEntity> images,
  ) = _LoadSuccess;
}
