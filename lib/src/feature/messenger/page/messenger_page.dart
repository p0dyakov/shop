import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:offline_messenger/src/core/widget/center_text.dart';
import 'package:offline_messenger/src/core/widget/dialog.dart';
import 'package:offline_messenger/src/feature/messenger/bloc/messenger_bloc.dart';
import 'package:offline_messenger/src/feature/messenger/widget/scope/messenger_scope.dart';

class MessengerPage extends StatefulWidget {
  const MessengerPage({
    Key? key,
    required this.server,
  }) : super(key: key);

  final BluetoothDevice server;

  @override
  State<MessengerPage> createState() => _MessengerPageState();
}

class _MessengerPageState extends State<MessengerPage> {
  @override
  Widget build(BuildContext pageContext) => MessengerScope(
        server: widget.server,
        child: Builder(
          builder: (blocContext) => BlocBuilder<MessengerBloc, MessengerState>(
            builder: (context, state) => WillPopScope(
              onWillPop: () => disconnect(
                pageContext: context,
                isInfoDialog: state is MessengerLoadFailureState,
              ),
              child: Scaffold(
                appBar: AppBar(title: const Text('Messenger')),
                body: state.when(
                  talking: (data, file) => const Text('talking'),
                  slient: (data) => const Text('slient'),
                  loadFailure: (data, error) => CenterText(text: error),
                  needPair: (data) => const CenterText(
                    text: 'Accept bluetooth connection on both devices',
                  ),
                ),
              ),
            ),
          ),
        ),
      );

  // Future<void> showErrorDialog({
  //   required BuildContext pageContext,
  //   required String error,
  // }) async {
  //   await showDialog<InfoDialogWidget>(
  //     context: pageContext,
  //     builder: (context) => InfoDialogWidget(
  //       title: 'Disconnected',
  //       content: error,
  //     ),
  //   ).then((value) {
  //     AutoRouter.of(pageContext).pop();
  //   });
  // }

  Future<bool> disconnect({
    required BuildContext pageContext,
    required bool isInfoDialog,
  }) async {
    var isAccept = false;

    await showDialog<StatelessElement>(
      context: context,
      builder: (context) => DialogWidget(
        title: 'Disconnect',
        content: 'Are you sure want to disconnect?',
        onAccept: () {
          BlocProvider.of<MessengerBloc>(pageContext)
              .add(const DisconnectEvent());
          isAccept = true;
          AutoRouter.of(context).pop(context);
        },
        acceptText: 'Disconnect',
      ),
    );

    return isAccept;
  }
}
