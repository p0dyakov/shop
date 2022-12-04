import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/src/core/resource/theme/sizes.dart';
import 'package:photo_editor/src/core/widget/center_text.dart';
import 'package:photo_editor/src/feature/gallery/bloc/gallery_bloc.dart';
import 'package:photo_editor/src/feature/gallery/model/gallery_data.dart';
import 'package:photo_editor/src/feature/gallery/widget/folder_card.dart';
import 'package:photo_editor/src/feature/gallery/widget/scope/gallery_scope.dart';
import 'package:photo_manager/photo_manager.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GalleryScope(
        child: Builder(
          builder: (context) {
            final galleryBloc = BlocProvider.of<GalleryBloc>(context);

            return Scaffold(
              appBar: AppBar(title: const Text('Gallery')),
              body: BlocBuilder<GalleryBloc, GalleryState>(
                builder: (context, state) => state.when(
                  grantPermissions: () =>
                      const CenterText(text: 'grant permissions'),
                  loadFailure: (String error) => CenterText(text: error),
                  loading: () => const CenterText(text: 'loading'),
                  loadImagesSuccess: (folder, images) => WillPopScope(
                    onWillPop: () async {
                      galleryBloc.add(const GalleryEvent.loadFolders());

                      return false;
                    },
                    child: GridView.builder(
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
                  loadFoldersSuccess: (List<AssetPathEntity> folders) =>
                      GridView.builder(
                    padding: const EdgeInsets.all(10),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) =>
                        FolderCardWidget(folders[index]),
                    itemCount: folders.length,
                  ),
                ),
              ),
            );
          },
        ),
      );
}
