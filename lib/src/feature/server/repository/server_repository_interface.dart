import 'package:offline_messenger/src/core/model/message.dart';
import 'package:offline_messenger/src/feature/server/model/server_data.dart';

abstract class IServerRepository {
  ServerData currentData();

  Future<void> addMessage(Message message);
}
