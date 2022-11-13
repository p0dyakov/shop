import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:offline_messenger/src/feature/messenger/bloc/messenger_bloc.dart';

class MessengerScope extends StatelessWidget {
  const MessengerScope({
    Key? key,
    required this.server,
    required this.child,
  }) : super(key: key);

  final BluetoothDevice server;
  final Widget child;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => MessengerBloc(server: server),
        child: child,
      );
}
