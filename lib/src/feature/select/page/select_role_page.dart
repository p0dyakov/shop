import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:offline_messenger/src/core/resource/theme/sizes.dart';
import 'package:offline_messenger/src/core/router/app_router.dart';
import 'package:offline_messenger/src/feature/select/widget/select_role_card.dart';

class SelectRolePage extends StatelessWidget {
  const SelectRolePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Select Role'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text(
                'Select your role',
                style: TextStyle(fontSize: 16),
                overflow: TextOverflow.clip,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  SelectRoleCardWidget(
                    title: 'User',
                    subtitle:
                        'Users will send and receive messages from the server',
                    onTap: () => AutoRouter.of(context).popAndPush(
                      const DiscoveryRoute(),
                    ),
                  ),
                  const SizedBox(width: 10),
                  SelectRoleCardWidget(
                    title: 'Server',
                    subtitle:
                        'The server will receive and forward messages from users',
                    onTap: () => AutoRouter.of(context).push(
                      const ServerRoute(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
