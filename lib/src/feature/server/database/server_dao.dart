import 'package:offline_messenger/src/core/database/drift/app_database.dart';
import 'package:offline_messenger/src/core/database/shared_preferences/typed_preferences_dao.dart';
import 'package:offline_messenger/src/core/model/message.dart';
import 'package:offline_messenger/src/feature/server/database/server_dao_interface.dart';

class ServerDao implements IServerDao {
  late final AppDatabase _appDatabase;

  ServerDao({
    required AppDatabase appDatabase,
  }) {
    _appDatabase = appDatabase;
  }

  @override
  // TODO: implement messages
  PreferencesEntry<List<Message>> get messages => throw UnimplementedError();
}
