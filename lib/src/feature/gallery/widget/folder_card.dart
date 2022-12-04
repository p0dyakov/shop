import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/src/core/widget/center_text.dart';
import 'package:photo_editor/src/feature/gallery/bloc/gallery_bloc.dart';
import 'package:photo_manager/photo_manager.dart';

class FolderCardWidget extends StatelessWidget {
  const FolderCardWidget(this.folder, {Key? key}) : super(key: key);

  final AssetPathEntity folder;

  @override
  Widget build(BuildContext context) => InkWell(
        onTap: () => BlocProvider.of<GalleryBloc>(context)
            .add(GalleryEvent.loadImages(folder)),
        child: Container(
          height: 100,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 228, 228, 228),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: CenterText(text: folder.name),
        ),
      );
}
