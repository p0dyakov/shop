import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:transmitter/src/feature/transmitter/bloc/transmitter_bloc.dart';
import 'package:transmitter/src/feature/transmitter/widget/scope/transmitter_scope.dart';

class TransmitterPage extends StatefulWidget {
  const TransmitterPage({
    Key? key,
    required this.interlocutor,
  }) : super(key: key);

  final BluetoothDevice interlocutor;

  @override
  State<TransmitterPage> createState() => _TransmitterPageState();
}

class _TransmitterPageState extends State<TransmitterPage> {
  late final transmitterBloc = BlocProvider.of<TransmitterBloc>(context);

  @override
  Widget build(BuildContext context) => TransmitterScope(
        interlocutor: widget.interlocutor,
        child: WillPopScope(
          onWillPop: disconnect,
          child: Scaffold(
            appBar: AppBar(
              title: const Text('transmitter page'),
              actions: const [],
            ),
            body: Container(),
          ),
        ),
      );

  Future<bool> disconnect() async {
    transmitterBloc.add(const DisconnectEvent());

    return true;
  }
}
