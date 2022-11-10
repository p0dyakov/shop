import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:transmitter/src/feature/transmitter/bloc/transmitter_bloc.dart';

class TransmitterScope extends StatelessWidget {
  const TransmitterScope({
    Key? key,
    required this.interlocutor,
    required this.child,
  }) : super(key: key);

  final BluetoothDevice interlocutor;
  final Widget child;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => TransmitterBloc(interlocutor: interlocutor),
        child: Builder(builder: (context) => child),
      );
}
