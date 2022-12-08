part of 'editor_bloc.dart';

@freezed
class EditorEvent with _$EditorEvent {
  const factory EditorEvent.loadImageSettings() = _LoadImageSettings;
  const factory EditorEvent.changeImageSettings(BitmapOperation operation) =
      _ChangeImageSettings;
  const factory EditorEvent.changeContrastValue(double contrastValue) =
      _ChangeContrastValue;
  const factory EditorEvent.changeBrightnessValue(double brightnessValue) =
      _ChangeBrightnessValue;
  const factory EditorEvent.restorePreviousSettings() =
      _RestorePreviousSettings;
  const factory EditorEvent.saveToGallery() = _SaveToGallery;
}
