import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:offline_messenger/src/core/resource/theme/sizes.dart';
import 'package:offline_messenger/src/core/router/app_router.dart';
import 'package:offline_messenger/src/core/widget/dialog.dart';

class DeviceWidget extends StatelessWidget {
  const DeviceWidget({
    Key? key,
    required this.device,
  }) : super(key: key);

  final BluetoothDevice device;

  @override
  Widget build(BuildContext context) {
    const iconWidth = 45.0;
    const iconHeight = 45.0;
    const iconRightMargin = 20.0;

    return InkWell(
      onTap: () => showDialog<StatelessElement>(
        context: context,
        builder: (context) => DialogWidget(
          content: 'Are you sure you want to pair with ${device.name}?',
          title: 'Connect',
          onAccept: () => AutoRouter.of(context).popAndPush(
            MessengerRoute(
              server: device,
            ),
          ),
          acceptText: 'connect',
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
          vertical: 15,
        ),
        color: const Color.fromARGB(255, 238, 238, 238),
        child: Row(
          children: [
            Container(
              width: iconWidth,
              height: iconHeight,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.all(Radius.circular(45)),
              ),
              child: const Icon(
                Icons.devices,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: iconRightMargin),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width -
                    kDefaultPadding -
                    iconWidth -
                    iconRightMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    device.name ?? 'Unknown device',
                    style: const TextStyle(fontSize: 17),
                    overflow: TextOverflow.clip,
                  ),
                  Text(
                    'Address: ' + device.address,
                    style: const TextStyle(fontSize: 15),
                    overflow: TextOverflow.clip,
                  ),
                  Text(
                    'Bluetooth type: ' + device.type.toString().split('.').last,
                    style: const TextStyle(fontSize: 15),
                    overflow: TextOverflow.clip,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
