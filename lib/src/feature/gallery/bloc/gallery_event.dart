part of 'gallery_bloc.dart';

@freezed
class GalleryEvent with _$GalleryEvent {
  const factory GalleryEvent.loadImages() = _LoadImages;
  const factory GalleryEvent.requestPermission() = _RequestPermission;
  const factory GalleryEvent.deleteImages(List<String> ids) = _DeleteImages;
}
