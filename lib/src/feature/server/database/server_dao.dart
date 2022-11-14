import 'package:drift/drift.dart';
import 'package:offline_messenger/src/core/database/drift/app_database.dart';
import 'package:offline_messenger/src/core/database/drift/tables.dart';
import 'package:offline_messenger/src/core/model/message.dart';
import 'package:offline_messenger/src/feature/server/database/server_dao_interface.dart';

part 'server_dao.g.dart';

@DriftAccessor(tables: [Messages])
class ServerDao extends DatabaseAccessor<AppDatabase>
    with _$ServerDaoMixin
    implements IServerDao {
  ServerDao(AppDatabase db) : super(db);

  @override
  Future<List<Message>> get messagesEntries => select(messages).get();

  @override
  Future<int> addMessage(Message message) => into(messages).insert(
        MessagesCompanion(
          sended: Value(message.sended),
          senderAddress: Value(message.senderAddress),
          senderName: Value(message.senderName),
          message: Value(message.message),
        ),
      );
}
