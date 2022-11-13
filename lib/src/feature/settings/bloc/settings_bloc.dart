import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offline_messenger/src/feature/settings/enum/app_theme.dart';
import 'package:offline_messenger/src/feature/settings/model/settings_data.dart';
import 'package:offline_messenger/src/feature/settings/repository/settings_repository_interface.dart';
import 'package:stream_bloc/stream_bloc.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends StreamBloc<SettingsEvent, SettingsState> {
  final ISettingsRepository _settingsRepository;

  SettingsBloc({
    required ISettingsRepository settingsRepository,
  })  : _settingsRepository = settingsRepository,
        super(
          SettingsInitialState(
            data: settingsRepository.currentData(),
          ),
        );

  @override
  Stream<SettingsState> mapEventToStates(SettingsEvent event) => event.when(
        openBluetoothSettings: _onOpenBluetoothSettings,
        setTheme: _setTheme,
        changeDeviceName: _onChangeDeviceName,
      );

  SettingsData get _data => state.data;

  Stream<SettingsState> _onOpenBluetoothSettings() =>
      _performMutation(() async {
        await FlutterBluetoothSerial.instance.openSettings();
      });

  Stream<SettingsState> _onChangeDeviceName(String name) =>
      _performMutation(() async {
        await FlutterBluetoothSerial.instance.changeName(name);
      });

  Stream<SettingsState> _setTheme(AppTheme theme) => _performMutation(
        () => _settingsRepository.setTheme(theme),
      );

  Stream<SettingsState> _performMutation(
    Future<void> Function() body,
  ) async* {
    yield SettingsState.loading(data: _data);
    try {
      await body();
      yield SettingsLoadSuccessState(
        data: _settingsRepository.currentData(),
      );
    } on Object catch (e) {
      yield SettingsLoadFailureState(
        data: _data,
        description: e.toString(),
      );
      rethrow;
    } finally {
      yield SettingsInitialState(data: _data);
    }
  }
}
