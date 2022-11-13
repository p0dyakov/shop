import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

class Connection {
  const Connection({
    required this.connection,
    required this.device,
  });

  final BluetoothConnection connection;
  final BluetoothDevice device;
}
