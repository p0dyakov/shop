import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:offline_messenger/src/core/resource/theme/sizes.dart';
import 'package:offline_messenger/src/core/widget/center_text.dart';
import 'package:offline_messenger/src/feature/discovery/bloc/discovery_bloc.dart';
import 'package:offline_messenger/src/feature/discovery/widget/device.dart';
import 'package:offline_messenger/src/feature/discovery/widget/permission.dart';
import 'package:offline_messenger/src/feature/discovery/widget/scope/discovery_scope.dart';

class DiscoveryPage extends StatefulWidget {
  const DiscoveryPage({Key? key}) : super(key: key);

  @override
  State<DiscoveryPage> createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage> {
  @override
  Widget build(BuildContext context) => DiscoveryScope(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Discovery Device'),
          ),
          body: BlocBuilder<DiscoveryBloc, DiscoveryState>(
            builder: (context, state) => state.when(
              needPermissions: (persmissions, isBluetoothEnabled) => ListView(
                children: [
                  const SizedBox(height: 20),
                  Visibility(
                    visible: persmissions.isNotEmpty,
                    child: Column(
                      children: [
                        const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: kDefaultPadding),
                          child: Text(
                            'For the application to work, you need to grant these permissions',
                            style: TextStyle(fontSize: 16),
                            overflow: TextOverflow.clip,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Container(
                          color: const Color.fromARGB(255, 238, 238, 238),
                          child: ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) => PermissionWidget(
                              text: persmissions[index]
                                  .toString()
                                  .split('.')
                                  .last,
                              onTap: () =>
                                  BlocProvider.of<DiscoveryBloc>(context).add(
                                GetPermissionEvent(
                                  permission: persmissions[index],
                                ),
                              ),
                            ),
                            separatorBuilder: (context, index) => const Divider(
                              height: 1,
                              color: Color.fromARGB(255, 202, 202, 202),
                            ),
                            itemCount: persmissions.length,
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: !isBluetoothEnabled,
                    child: Column(
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
                          text: 'Enable Bluetooth',
                          onTap: () =>
                              BlocProvider.of<DiscoveryBloc>(context).add(
                            const RequestEnableBluetoothEvent(),
                          ),
                        ),
                      ],
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
              loadSuccess: (devices, isDiscoverying) => ListView(
                children: [
                  InkWell(
                    onTap: () => isDiscoverying
                        ? null
                        : BlocProvider.of<DiscoveryBloc>(context)
                            .add(const StartDiscoveryEvent()),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding,
                        vertical: 15,
                      ),
                      color: const Color.fromARGB(255, 238, 238, 238),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            isDiscoverying ? 'Discovering' : 'Refresh',
                            style: const TextStyle(fontSize: 17),
                            overflow: TextOverflow.clip,
                          ),
                          isDiscoverying
                              ? const CupertinoActivityIndicator(
                                  radius: 13,
                                  color: Colors.black,
                                )
                              : const Icon(
                                  Icons.refresh_rounded,
                                  size: 24,
                                  color: Colors.black,
                                )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Text(
                      'The server name and port are written on the phone with the server. Connect to this server',
                      style: TextStyle(fontSize: 16),
                      overflow: TextOverflow.clip,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Container(
                    color: const Color.fromARGB(255, 238, 238, 238),
                    child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => DeviceWidget(
                        device: devices[index],
                      ),
                      separatorBuilder: (context, index) => const Divider(
                        indent: kDefaultPadding + 45 + 20,
                        height: 1,
                        color: Color.fromARGB(255, 202, 202, 202),
                      ),
                      itemCount: devices.length,
                    ),
                  )
                ],
              ),
              loadFailure: (error) => CenterText(text: error),
            ),
          ),
        ),
      );
}
