import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'messenger_data.freezed.dart';

@freezed
class MessengerData with _$MessengerData {
  const factory MessengerData({
    required BluetoothDevice server,
  }) = _MessengerData;
}
