import 'package:auto_route/auto_route.dart';
import 'package:bitmap/bitmap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/src/core/resource/theme/sizes.dart';
import 'package:photo_editor/src/core/widget/center_text.dart';
import 'package:photo_editor/src/core/widget/dialog.dart';
import 'package:photo_editor/src/feature/editor/bloc/editor_bloc.dart';
import 'package:photo_editor/src/feature/editor/widget/icon_button.dart';
import 'package:photo_editor/src/feature/editor/widget/scope/editor_scope.dart';
import 'package:photo_editor/src/feature/editor/widget/slider.dart';
import 'package:photo_editor/src/feature/editor/widget/text_button.dart';
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
                  barrierDismissible: false,
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

                return true;
              },
              child: BlocBuilder<EditorBloc, EditorState>(
                builder: (context, state) => Scaffold(
                  extendBodyBehindAppBar: true,
                  extendBody: true,
                  backgroundColor: Colors.black,
                  appBar: AppBar(
                    backgroundColor: Colors.black.withOpacity(0.7),
                    title: const Text('Editor'),
                    actions: [
                      IconButton(
                        onPressed: () =>
                            BlocProvider.of<EditorBloc>(context).add(
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
                  body: state.when(
                    loadSuccess: (image, brightnessValue, contrastValue) =>
                        SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: InteractiveViewer(
                        boundaryMargin: const EdgeInsets.all(200),
                        minScale: 0.1,
                        maxScale: 6,
                        child: Center(
                          child: Image.memory(
                            image,
                            filterQuality: FilterQuality.medium,
                          ),
                        ),
                      ),
                    ),
                    loadFailure: (error) => CenterText(
                      text: error,
                      color: Colors.white,
                    ),
                    loading: () => const Center(
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  bottomNavigationBar: state.when(
                    loadFailure: (_) => const SizedBox(),
                    loading: () => const SizedBox(),
                    loadSuccess: (image, brightnessValue, contrastValue) =>
                        Container(
                      height: 200,
                      padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding,
                      ),
                      color: Colors.black.withOpacity(0.7),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              EditorIconButtonWidget(
                                operation: BitmapFlip.vertical(),
                                icon: Icons.flip,
                                angle: 1.57,
                              ),
                              EditorIconButtonWidget(
                                operation: BitmapFlip.horizontal(),
                                icon: Icons.flip,
                              ),
                              EditorIconButtonWidget(
                                operation: BitmapRotate.rotateClockwise(),
                                icon: Icons.rotate_left,
                              ),
                            ],
                          ),
                          SliderWidget(
                            max: 150,
                            min: 50,
                            icon: Icons.contrast_outlined,
                            value: contrastValue,
                            onChangeEnd: (double value) =>
                                BlocProvider.of<EditorBloc>(context).add(
                              EditorEvent.changeImageSettings(
                                BitmapContrast(value / 100),
                              ),
                            ),
                            onChanged: (double value) =>
                                BlocProvider.of<EditorBloc>(context).add(
                              EditorEvent.changeContrastValue(value),
                            ),
                          ),
                          SliderWidget(
                            min: -150,
                            max: 150,
                            icon: Icons.brightness_7_outlined,
                            value: brightnessValue,
                            onChangeEnd: (double value) =>
                                BlocProvider.of<EditorBloc>(context).add(
                              EditorEvent.changeImageSettings(
                                BitmapBrightness(value / 100),
                              ),
                            ),
                            onChanged: (double value) =>
                                BlocProvider.of<EditorBloc>(context).add(
                              EditorEvent.changeBrightnessValue(value),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              EditorTextButtonWidget(
                                onPressed: () => AutoRouter.of(context).pop(),
                                text: 'Cancel',
                              ),
                              EditorTextButtonWidget(
                                onPressed: () =>
                                    BlocProvider.of<EditorBloc>(context).add(
                                  const EditorEvent.saveToGallery(),
                                ),
                                text: 'Save',
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
