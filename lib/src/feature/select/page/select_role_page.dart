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
            children: [
              const SizedBox(height: 20),
              SelectRoleCardWidget(
                title: 'User',
                onTap: () => AutoRouter.of(context).popAndPush(
                  const DiscoveryRoute(),
                ),
              ),
              SelectRoleCardWidget(
                title: 'Server',
                onTap: () => AutoRouter.of(context).push(
                  const ServerRoute(),
                ),
              ),
            ],
          ),
        ),
      );
}
