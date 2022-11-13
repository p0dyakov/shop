import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:offline_messenger/src/feature/discovery/bloc/discovery_bloc.dart';
import 'package:offline_messenger/src/feature/server/bloc/server_bloc.dart';

class ServerScope extends StatelessWidget {
  const ServerScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => ServerBloc(),
        child: child,
      );
}
