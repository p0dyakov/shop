import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop/src/core/database/shared_preferences/typed_preferences_dao.dart';
import 'package:shop/src/feature/settings/database/settings_dao_interface.dart';

class SettingsDao extends TypedPreferencesDao implements ISettingsDao {
  SettingsDao({
    required SharedPreferences sharedPreferences,
  }) : super(sharedPreferences, name: 'settings');

  @override
  PreferencesEntry<String> get themeMode => stringEntry('theme_mode');
}
