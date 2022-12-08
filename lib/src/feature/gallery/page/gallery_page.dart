import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:photo_editor/src/core/resource/theme/sizes.dart';
import 'package:photo_editor/src/core/router/app_router.dart';
import 'package:photo_editor/src/core/widget/center_text.dart';
import 'package:photo_editor/src/core/widget/dialog.dart';
import 'package:photo_editor/src/feature/gallery/bloc/gallery_bloc.dart';
import 'package:photo_editor/src/feature/gallery/widget/image_card.dart';
import 'package:photo_editor/src/feature/gallery/widget/image_card_placeholder.dart';
import 'package:photo_editor/src/feature/gallery/widget/scope/gallery_scope.dart';
import 'package:photo_manager/photo_manager.dart';

class GalleryPage extends StatefulWidget {
  const GalleryPage({Key? key}) : super(key: key);

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  final _controller = ScrollController();
  final dateFormatter = DateFormat('dd MMM yyyy');

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
                      crossAxisCount: 4,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1,
                    ),
                    itemBuilder: (context, index) =>
                        const ImageCardPlaceholderWidget(),
                    itemCount: 33,
                  ),
                  loadSuccess: (images) {
                    final sortedImages = <List<AssetEntity>>[];
                    var buffer = <AssetEntity>[];

                    for (final image in images) {
                      if (buffer.isEmpty) {
                        buffer.add(image);
                      } else {
                        final creation = image.createDateTime;
                        final bufferCreation = buffer.last.createDateTime;

                        if (creation.year == bufferCreation.year &&
                            creation.month == bufferCreation.month &&
                            creation.day == bufferCreation.day) {
                          buffer.add(image);
                        } else {
                          sortedImages.add(buffer);
                          buffer = [image];
                        }
                      }
                    }

                    return ListView.builder(
                      padding: const EdgeInsets.only(top: 30),
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      controller: _controller,
                      itemCount: sortedImages.length,
                      itemBuilder: (context, dayIndex) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: kDefaultPadding),
                            child: Text(
                              dateFormatter.format(
                                sortedImages[dayIndex].last.createDateTime,
                              ),
                              style: const TextStyle(fontSize: 15),
                            ),
                          ),
                          const SizedBox(height: 5),
                          GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: sortedImages[dayIndex].length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              crossAxisSpacing: 1,
                              mainAxisSpacing: 1,
                            ),
                            itemBuilder: (context, index) => ImageCardWidget(
                              image: sortedImages[dayIndex][index],
                              onTap: () => showDialog<StatelessElement>(
                                context: context,
                                builder: (context) => DialogWidget(
                                  content:
                                      'Are you sure you want to edit ${sortedImages[dayIndex][index].title}?',
                                  title: 'Editing',
                                  onAccept: () =>
                                      AutoRouter.of(context).popAndPush(
                                    EditorRoute(
                                      image: sortedImages[dayIndex][index],
                                    ),
                                  ),
                                  acceptText: 'edit',
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    );
                  },
                ),
              ),
            );
          },
        ),
      );
}
