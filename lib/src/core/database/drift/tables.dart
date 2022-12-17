import 'package:drift/drift.dart';
import 'package:shop/src/core/model/message.dart';

@UseRowClass(Message)
class Messages extends Table {
  TextColumn get senderName => text()();
  TextColumn get senderAddress => text()();
  TextColumn get message => text()();
  DateTimeColumn get sended =>
      dateTime().check(sended.isBiggerThan(Constant(DateTime(1950))))();
}
