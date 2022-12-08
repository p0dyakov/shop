part of 'editor_bloc.dart';

@freezed
class EditorState with _$EditorState {
  const factory EditorState.loadSuccess(
    Uint8List image,
    double brightnessValue,
    double contrastValue,
  ) = _LoadSuccess;
  const factory EditorState.loadFailure(String error) = _LoadFailure;
  const factory EditorState.loading() = _Loading;
}
