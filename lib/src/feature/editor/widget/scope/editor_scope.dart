import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/src/feature/editor/bloc/editor_bloc.dart';
import 'package:photo_manager/photo_manager.dart';

class EditorScope extends StatelessWidget {
  const EditorScope({
    Key? key,
    required this.child,
    required this.image,
  }) : super(key: key);

  final Widget child;
  final AssetEntity image;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => EditorBloc(image),
        child: child,
      );
}
