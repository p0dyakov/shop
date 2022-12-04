import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:photo_editor/src/feature/gallery/model/gallery_data.dart';
import 'package:photo_editor/src/feature/gallery/repository/gallery_repository_interface.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:stream_bloc/stream_bloc.dart';

part 'gallery_event.dart';
part 'gallery_state.dart';
part 'gallery_bloc.freezed.dart';

class GalleryBloc extends StreamBloc<GalleryEvent, GalleryState> {
  final IGalleryRepository _galleryRepository;

  GalleryBloc(IGalleryRepository galleryRepository)
      : _galleryRepository = galleryRepository,
        super(_Loading(GalleryData([])));

  GalleryData get _data => state.data;

  @override
  Stream<GalleryState> mapEventToStates(GalleryEvent event) => event.when(
        deleteImages: (List<String> ids) => _performMutation(() async {
          await _galleryRepository.deleteImages(ids);
          final images = List<AssetPathEntity>.from(_data.images);
          for (final id in ids) {
            images.removeWhere((element) => element.id == id);
          }

          return _LoadSuccess(_data.copyWith(images: images));
        }),
        loadImages: () => _performMutation(() async {
          final images = await _galleryRepository.loadImages();

          return _LoadSuccess(_data.copyWith(images: images));
        }),
        requestPermission: () => _performMutation(() async {
          final isGranted = await _galleryRepository.requestPermission();
          if (!isGranted) return _GrantPermissions(_data);
          add(const _LoadImages());

          return _Loading(_data);
        }),
      );

  Stream<GalleryState> _performMutation(
    Future<GalleryState> Function() body,
  ) async* {
    try {
      final newState = await body();
      yield newState;
    } on Object catch (e) {
      yield _LoadFailure(_data, e.toString());
    }
  }
}
