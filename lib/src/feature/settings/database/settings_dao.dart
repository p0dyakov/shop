import 'package:photo_editor/src/core/database/shared_preferences/typed_preferences_dao.dart';
import 'package:photo_editor/src/feature/settings/database/settings_dao_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsDao extends TypedPreferencesDao implements ISettingsDao {
  SettingsDao({
    required SharedPreferences sharedPreferences,
  }) : super(sharedPreferences, name: 'settings');

  @override
  PreferencesEntry<String> get themeMode => stringEntry('theme_mode');
}
