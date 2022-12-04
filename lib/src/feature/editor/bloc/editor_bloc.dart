import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_bloc/stream_bloc.dart';

part 'editor_event.dart';
part 'editor_state.dart';
part 'editor_bloc.freezed.dart';

class EditorBloc extends StreamBloc<EditorEvent, EditorState> {
  EditorBloc() : super(const _Initial());

  @override
  Stream<EditorState> mapEventToStates(EditorEvent event) => event.when(
        started: () => _performMutation(() async => const _Initial()),
      );

  Stream<EditorState> _performMutation(
    Future<EditorState> Function() body,
  ) async* {
    try {
      final newState = await body();
      yield newState;
    } on Object catch (e) {
      // yield PermissionsLoadFailureState(error: e.toString());
    }
  }
}
