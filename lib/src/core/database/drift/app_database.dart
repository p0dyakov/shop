import 'package:drift/drift.dart';
import 'package:photo_editor/src/core/database/drift/connection/open_connection_stub.dart'
    if (dart.library.io) 'package:photo_editor/src/core/database/drift/connection/open_connection_io.dart'
    if (dart.library.html) 'package:photo_editor/src/core/database/drift/connection/open_connection_web.dart'
    as connection;
import 'package:photo_editor/src/core/database/drift/tables.dart';
import 'package:photo_editor/src/core/model/message.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [Messages])
class AppDatabase extends _$AppDatabase {
  AppDatabase({required String name}) : super(connection.openConnection(name));

  @override
  int get schemaVersion => 1;
}
