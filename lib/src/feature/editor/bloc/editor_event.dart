part of 'editor_bloc.dart';

@freezed
class EditorEvent with _$EditorEvent {
  const factory EditorEvent.loadImageSettings() = _LoadImageSettings;
  const factory EditorEvent.changeImageSettings(BitmapOperation operation) =
      _ChangeImageSettings;
  const factory EditorEvent.restorePreviousSettings() =
      _RestorePreviousSettings;
  const factory EditorEvent.saveToGallery() = _SaveToGallery;
}
