import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/src/feature/editor/bloc/editor_bloc.dart';

class EditorScope extends StatelessWidget {
  const EditorScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => EditorBloc(),
        child: child,
      );
}
