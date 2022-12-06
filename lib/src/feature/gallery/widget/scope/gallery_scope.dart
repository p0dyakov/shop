import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/src/core/extension/extensions.dart';
import 'package:photo_editor/src/feature/gallery/bloc/gallery_bloc.dart';

class GalleryScope extends StatelessWidget {
  const GalleryScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => GalleryBloc(context.repository.gallery),
        child: child,
      );
}
