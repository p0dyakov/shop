import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/src/feature/permissions/bloc/permissions_bloc.dart';

class PermissionsScope extends StatelessWidget {
  const PermissionsScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => PermissionsBloc(),
        child: child,
      );
}
