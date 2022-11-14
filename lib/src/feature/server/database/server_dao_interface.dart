import 'package:offline_messenger/src/core/model/message.dart';

abstract class IServerDao {
  Future<List<Message>> get messagesEntries;
  Future<int> addMessage(Message message);
}
