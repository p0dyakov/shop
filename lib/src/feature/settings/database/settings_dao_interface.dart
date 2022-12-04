import 'package:photo_editor/src/core/database/shared_preferences/typed_preferences_dao.dart';

abstract class ISettingsDao {
  PreferencesEntry<String> get themeMode;
}
