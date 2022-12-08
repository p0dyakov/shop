import 'package:bitmap/bitmap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/src/feature/editor/bloc/editor_bloc.dart';

class EditorIconButtonWidget extends StatelessWidget {
  const EditorIconButtonWidget({
    Key? key,
    required this.operation,
    required this.icon,
    this.angle = 0,
  }) : super(key: key);

  final BitmapOperation operation;
  final IconData icon;
  final double angle;

  @override
  Widget build(BuildContext context) => IconButton(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.zero,
        onPressed: () => BlocProvider.of<EditorBloc>(context).add(
          EditorEvent.changeImageSettings(operation),
        ),
        icon: Transform.rotate(
          angle: angle,
          child: Icon(
            icon,
            color: Colors.white,
            size: 25,
          ),
        ),
      );
}
