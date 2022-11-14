import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:offline_messenger/src/core/resource/theme/sizes.dart';
import 'package:offline_messenger/src/core/widget/center_text.dart';
import 'package:offline_messenger/src/core/widget/dialog.dart';
import 'package:offline_messenger/src/feature/discovery/widget/permission.dart';
import 'package:offline_messenger/src/feature/server/bloc/server_bloc.dart';
import 'package:offline_messenger/src/feature/server/widget/scope/server_scope.dart';

class ServerPage extends StatelessWidget {
  const ServerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ServerScope(
        child: Builder(
          builder: (context) => BlocBuilder<ServerBloc, ServerState>(
            builder: (context, state) => WillPopScope(
              onWillPop: () => disconnect(context),
              child: Scaffold(
                appBar: AppBar(title: const Text('Server')),
                body: state.when(
                  needDiscoverable: () => Column(
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        child: Text(
                          'For the application to work, you need enable bluetooth',
                          style: TextStyle(fontSize: 16),
                          overflow: TextOverflow.clip,
                        ),
                      ),
                      const SizedBox(height: 4),
                      PermissionWidget(
                        text: 'Enable Discoverable',
                        onTap: () => BlocProvider.of<ServerBloc>(context).add(
                          const ServerEnableDiscoverableEvent(),
                        ),
                      ),
                    ],
                  ),
                  loading: () => const Center(
                    child: CupertinoActivityIndicator(
                      radius: 20,
                      color: Colors.black,
                    ),
                  ),
                  loadSuccess: (serverName, serverAddress) => CenterText(
                    text:
                        'If you are a user, then find the $serverName server (port: $serverAddress) on the discovery page and connect to it',
                  ),
                  loadFailure: (error) => CenterText(text: error),
                ),
              ),
            ),
          ),
        ),
      );

  Future<bool> disconnect(BuildContext pageContext) async {
    var isAccept = false;

    await showDialog<StatelessElement>(
      context: pageContext,
      builder: (context) => DialogWidget(
        title: 'Disconnect',
        content: 'Are you sure want to disconnect?',
        onAccept: () {
          BlocProvider.of<ServerBloc>(pageContext)
              .add(const ServerDisconnectEvent());
          isAccept = true;
          AutoRouter.of(context).pop(context);
        },
        acceptText: 'Disconnect',
      ),
    );

    return isAccept;
  }
}
