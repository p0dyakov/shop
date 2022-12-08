import 'package:auto_route/auto_route.dart';
import 'package:bitmap/bitmap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/src/core/widget/center_text.dart';
import 'package:photo_editor/src/core/widget/dialog.dart';
import 'package:photo_editor/src/feature/editor/bloc/editor_bloc.dart';
import 'package:photo_editor/src/feature/editor/widget/scope/editor_scope.dart';
import 'package:photo_editor/src/feature/editor/widget/slider.dart';
import 'package:photo_manager/photo_manager.dart';

class EditorPage extends StatefulWidget {
  const EditorPage({Key? key, required this.image}) : super(key: key);

  final AssetEntity image;

  @override
  State<EditorPage> createState() => _EditorPageState();
}

class _EditorPageState extends State<EditorPage> {
  @override
  Widget build(BuildContext context) => EditorScope(
        image: widget.image,
        child: Builder(
          builder: (context) => Builder(
            builder: (context) => WillPopScope(
              onWillPop: () async {
                var save = false;

                await showDialog<StatelessElement>(
                  context: context,
                  builder: (context) => DialogWidget(
                    content: 'Are you want to save result to gallery?',
                    title: 'Saving',
                    onAccept: () {
                      save = true;
                      AutoRouter.of(context).pop();
                    },
                    acceptText: 'save',
                  ),
                );

                if (save) {
                  BlocProvider.of<EditorBloc>(context).add(
                    const EditorEvent.saveToGallery(),
                  );
                }

                return !save;
              },
              child: Scaffold(
                appBar: AppBar(
                  title: const Text('Editor'),
                  actions: [
                    IconButton(
                      onPressed: () => BlocProvider.of<EditorBloc>(context).add(
                        const EditorEvent.restorePreviousSettings(),
                      ),
                      icon: const Icon(
                        Icons.restore_rounded,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ],
                ),
                body: BlocBuilder<EditorBloc, EditorState>(
                  builder: (context, state) => state.when(
                    loadSuccess: (image) => SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: InteractiveViewer(
                        boundaryMargin: const EdgeInsets.all(100),
                        minScale: 0.1,
                        maxScale: 6,
                        child: Center(
                          child: Image.memory(
                            image,
                            filterQuality: FilterQuality.none,
                          ),
                        ),
                      ),
                    ),
                    loadFailure: (error) => CenterText(text: error),
                    loading: () => const CenterText(text: 'Loading'),
                  ),
                ),
                bottomNavigationBar: Container(
                  height: 160,
                  color: Theme.of(context).primaryColor,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () =>
                                BlocProvider.of<EditorBloc>(context).add(
                              EditorEvent.changeImageSettings(
                                BitmapFlip.vertical(),
                              ),
                            ),
                            icon: Transform.rotate(
                              angle: 1.57,
                              child: const Icon(
                                Icons.flip,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () =>
                                BlocProvider.of<EditorBloc>(context).add(
                              EditorEvent.changeImageSettings(
                                BitmapFlip.horizontal(),
                              ),
                            ),
                            icon: const Icon(
                              Icons.flip,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                          IconButton(
                            onPressed: () =>
                                BlocProvider.of<EditorBloc>(context).add(
                              EditorEvent.changeImageSettings(
                                BitmapRotate.rotateClockwise(),
                              ),
                            ),
                            icon: const Icon(
                              Icons.rotate_left,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                        ],
                      ),
                      SliderWidget(
                        max: 150,
                        min: 50,
                        operation: (value) => BitmapContrast(value / 100),
                        icon: Icons.contrast_outlined,
                      ),
                      SliderWidget(
                        operation: (value) => BitmapBrightness(value / 100),
                        min: -150,
                        max: 150,
                        icon: Icons.brightness_7_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
