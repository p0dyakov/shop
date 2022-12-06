import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/src/core/resource/theme/sizes.dart';
import 'package:photo_editor/src/core/widget/center_text.dart';
import 'package:photo_editor/src/feature/gallery/bloc/gallery_bloc.dart';
import 'package:photo_editor/src/feature/gallery/model/gallery_data.dart';
import 'package:photo_editor/src/feature/gallery/widget/scope/gallery_scope.dart';
import 'package:photo_manager/photo_manager.dart';

class GalleryPage extends StatefulWidget {
  const GalleryPage({Key? key}) : super(key: key);

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  final _controller = ScrollController();

  @override
  Widget build(BuildContext context) => GalleryScope(
        child: Builder(
          builder: (context) {
            final galleryBloc = BlocProvider.of<GalleryBloc>(context);

            if (!_controller.hasListeners) {
              _controller.addListener(
                () {
                  if (_controller.position.maxScrollExtent ==
                      _controller.position.pixels) {
                    galleryBloc.add(const GalleryEvent.loadImages());
                  }
                },
              );
            }

            return Scaffold(
              appBar: AppBar(title: const Text('Gallery')),
              body: BlocBuilder<GalleryBloc, GalleryState>(
                builder: (context, state) => state.when(
                  grantPermissions: () =>
                      const CenterText(text: 'grant permissions'),
                  loadFailure: (String error) => CenterText(text: error),
                  loading: () => const CenterText(text: 'loading'),
                  loadSuccess: (images) => GridView.builder(
                    controller: _controller,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2,
                    ),
                    itemBuilder: (context, index) => AssetEntityImage(
                      images[index],
                      fit: BoxFit.cover,
                      isOriginal: false,
                    ),
                    itemCount: images.length,
                  ),
                ),
              ),
            );
          },
        ),
      );
}
