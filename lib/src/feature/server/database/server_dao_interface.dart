import 'package:offline_messenger/src/core/database/shared_preferences/typed_preferences_dao.dart';
import 'package:offline_messenger/src/core/model/message.dart';

abstract class IServerDao {
  PreferencesEntry<List<Message>> get messages;
}
