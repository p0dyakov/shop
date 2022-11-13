import 'package:flutter/material.dart';
import 'package:offline_messenger/src/core/resource/theme/sizes.dart';
import 'package:offline_messenger/src/feature/server/widget/scope/server_scope.dart';

class ServerPage extends StatelessWidget {
  const ServerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ServerScope(
        child: Builder(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: const Text('Server'),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(height: 20),
                  Text('Connect to the server'),
                ],
              ),
            ),
          ),
        ),
      );
}
