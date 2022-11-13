import 'package:offline_messenger/src/core/model/message.dart';
import 'package:offline_messenger/src/feature/server/database/server_dao_interface.dart';
import 'package:offline_messenger/src/feature/server/model/server_data.dart';
import 'package:offline_messenger/src/feature/server/repository/server_repository_interface.dart';

class ServerRepository implements IServerRepository {
  final IServerDao _serverDao;

  ServerRepository({
    required IServerDao serverDao,
  }) : _serverDao = serverDao;

  List<Message>? get _messages => _serverDao.messages.value;

  @override
  ServerData currentData() => ServerData(
        messages: _messages ?? [],
      );

  @override
  Future<void> addMessage(Message message) {
    // TODO: implement addMessage
    throw UnimplementedError();
  }
}
