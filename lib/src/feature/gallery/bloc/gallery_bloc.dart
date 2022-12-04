import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_bloc/stream_bloc.dart';

part 'gallery_event.dart';
part 'gallery_state.dart';
part 'gallery_bloc.freezed.dart';

class GalleryBloc extends StreamBloc<GalleryEvent, GalleryState> {
  GalleryBloc() : super(const _Initial());

  @override
  Stream<GalleryState> mapEventToStates(GalleryEvent event) => event.when(
        started: () => _performMutation(() async => const _Initial()),
      );

  Stream<GalleryState> _performMutation(
    Future<GalleryState> Function() body,
  ) async* {
    try {
      final newState = await body();
      yield newState;
    } on Object catch (e) {
      // yield PermissionsLoadFailureState(error: e.toString());
    }
  }
}
