import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/src/core/resource/theme/sizes.dart';
import 'package:photo_editor/src/core/widget/center_text.dart';
import 'package:photo_editor/src/core/widget/dialog.dart';
import 'package:photo_editor/src/feature/gallery/bloc/gallery_bloc.dart';
import 'package:photo_editor/src/feature/gallery/widget/image_card.dart';
import 'package:photo_editor/src/feature/gallery/widget/image_card_placeholder.dart';
import 'package:photo_editor/src/feature/gallery/widget/scope/gallery_scope.dart';
import 'package:photo_editor/src/core/router/app_router.dart';

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
                  grantPermissions: () => Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'For the application to work, you need to grant access to the gallery',
                          style: TextStyle(fontSize: 20),
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          child: const Text('Grant access'),
                          onPressed: () => galleryBloc.add(
                            const GalleryEvent.requestPermission(),
                          ),
                        )
                      ],
                    ),
                  ),
                  loadFailure: (String error) =>
                      CenterText(text: 'Some error occurred: $error'),
                  loading: () => GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    controller: _controller,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2,
                    ),
                    itemBuilder: (context, index) =>
                        const ImageCardPlaceholderWidget(),
                    itemCount: 33,
                  ),
                  loadSuccess: (images) => GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    controller: _controller,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2,
                    ),
                    itemBuilder: (context, index) => ImageCardWidget(
                      onTap: () => showDialog<StatelessElement>(
                        context: context,
                        builder: (context) => DialogWidget(
                          content:
                              'Are you sure you want to edit ${images[index].title}?',
                          title: 'Editing',
                          onAccept: () => AutoRouter.of(context).popAndPush(
                            EditorRoute(
                              image: images[index],
                            ),
                          ),
                          acceptText: 'edit',
                        ),
                      ),
                      key: UniqueKey(),
                      image: images[index],
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
