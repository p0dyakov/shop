part of 'gallery_bloc.dart';

@freezed
class GalleryState with _$GalleryState {
  const factory GalleryState.grantPermissions(
    GalleryData data,
  ) = _GrantPermissions;
  const factory GalleryState.loading(
    GalleryData data,
  ) = _Loading;
  const factory GalleryState.loadSuccess(
    GalleryData data,
  ) = _LoadSuccess;
  const factory GalleryState.loadFailure(
    GalleryData data,
    String error,
  ) = _LoadFailure;
}
