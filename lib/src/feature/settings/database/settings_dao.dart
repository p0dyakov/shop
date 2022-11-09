import 'package:shared_preferences/shared_preferences.dart';
import 'package:transmitter/src/core/database/shared_preferences/typed_preferences_dao.dart';

abstract class ISettingsDao {
  PreferencesEntry<String> get themeMode;
}

class SettingsDao extends TypedPreferencesDao implements ISettingsDao {
  SettingsDao({
    required SharedPreferences sharedPreferences,
  }) : super(sharedPreferences, name: 'settings');

  @override
  PreferencesEntry<String> get themeMode => stringEntry('theme_mode');
}
