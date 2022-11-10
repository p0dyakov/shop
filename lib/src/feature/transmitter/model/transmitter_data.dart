import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transmitter_data.freezed.dart';

@freezed
class TransmitterData with _$TransmitterData {
  const factory TransmitterData({
    required BluetoothDevice interlocutor,
  }) = _TransmitterData;
}
