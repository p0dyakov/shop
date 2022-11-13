import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offline_messenger/src/core/model/message.dart';

part 'server_data.freezed.dart';

@freezed
class ServerData with _$ServerData {
  factory ServerData({
    required List<Message> messages,
  }) = _ServerData;
}
