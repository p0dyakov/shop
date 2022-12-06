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
  int _pageCounter = 0;
  AssetPathEntity? rootFolder;

  GalleryBloc(IGalleryRepository galleryRepository)
      : _galleryRepository = galleryRepository,
        super(const _Loading()) {
    add(const _RequestPermission());
  }

  @override
  Stream<GalleryState> mapEventToStates(GalleryEvent event) => event.when(
        deleteImages: (List<String> ids) => _performMutation(() async {
          await state.whenOrNull(
            loadSuccess: (images) async {
              await _galleryRepository.deleteImages(ids);
              for (final id in ids) {
                images.removeWhere((element) => element.id == id);
              }

              return _LoadSuccess(images);
            },
          );

          return state;
        }),
        loadImages: () => _performMutation(() async {
          rootFolder ??= await _galleryRepository.getRootFolder();
          final images = <AssetEntity>[];
          state.whenOrNull(loadSuccess: (prevImages) {
            images.addAll(prevImages);
          });
          for (final image in await _galleryRepository.loadImages(
            rootFolder!,
            _pageCounter,
            100,
          )) {
            if (image.type == AssetType.image) {
              images.add(image);
            }
          }

          _pageCounter++;

          return _LoadSuccess(images);
        }),
        requestPermission: () => _performMutation(() async {
          final isGranted = await _galleryRepository.requestPermission();
          if (!isGranted) return const _GrantPermissions();
          add(const _LoadImages());

          return const _Loading();
        }),
      );

  Stream<GalleryState> _performMutation(
    Future<GalleryState> Function() body,
  ) async* {
    try {
      final newState = await body();
      yield newState;
    } on Object catch (e) {
      yield _LoadFailure(e.toString());
    }
  }
}
