import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:transmitter/src/feature/room/bloc/room_bloc.dart';

class ConnectToOwnerPage extends StatefulWidget {
  const ConnectToOwnerPage({Key? key}) : super(key: key);

  @override
  State<ConnectToOwnerPage> createState() => _ConnectToOwnerPageState();
}

class _ConnectToOwnerPageState extends State<ConnectToOwnerPage> {
  late final roomBloc = BlocProvider.of<RoomBloc>(context);

  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: initial,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Select Role'),
            actions: const [],
          ),
          body: Container(),
        ),
      );

  Future<bool> initial() async {
    roomBloc.add(const RoomInitialEvent());

    return true;
  }
}
