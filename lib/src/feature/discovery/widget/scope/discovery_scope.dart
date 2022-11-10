import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:transmitter/src/feature/discovery/bloc/discovery_bloc.dart';

class DiscoveryScope extends StatelessWidget {
  const DiscoveryScope({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => DiscoveryBloc(),
        child: Builder(builder: (context) => child),
      );
}
