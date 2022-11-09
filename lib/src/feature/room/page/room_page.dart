import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:transmitter/src/feature/room/bloc/room_bloc.dart';

class RoomPage extends StatefulWidget {
  const RoomPage({Key? key}) : super(key: key);

  @override
  State<RoomPage> createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  late final roomBloc = BlocProvider.of<RoomBloc>(context);

  @override
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: disconnect,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Room page'),
            actions: const [],
          ),
          body: Container(),
        ),
      );

  Future<bool> disconnect() async {
    roomBloc.state.whenOrNull(
      roomOwner: (data, connectedDevices) {},
      roomParticipant: (data, owner) {
        final owner = (roomBloc.state as RoomParticipantState).owner;
        if (owner != null) roomBloc.add(DisconnectEvent(device: owner));
        roomBloc.add(const RoomInitialEvent());
      },
    );

    return true;
  }
}
