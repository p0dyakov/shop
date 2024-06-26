import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pure/pure.dart';
import 'package:shop/src/core/extension/extensions.dart';
import 'package:shop/src/core/widget/scope/bloc_scope.dart';
import 'package:shop/src/feature/settings/bloc/settings_bloc.dart';
import 'package:shop/src/feature/settings/enum/app_theme.dart';

AppTheme _theme(SettingsState state) => state.data.theme;

ThemeMode _themeToThemeMode(AppTheme theme) => theme.when(
      light: () => ThemeMode.light,
      dark: () => ThemeMode.dark,
      system: () => ThemeMode.system,
    );

class SettingsScope extends StatelessWidget {
  final Widget child;

  const SettingsScope({
    required this.child,
    Key? key,
  }) : super(key: key);

  static const BlocScope<SettingsEvent, SettingsState, SettingsBloc> _scope = BlocScope();

  static ScopeData<ThemeMode> get themeModeOf => _themeToThemeMode.dot(_theme).pipe(_scope.select);

  static ScopeData<AppTheme> get appThemeOf => _scope.select(_theme);

  static UnaryScopeMethod<AppTheme> get setTheme => _scope.unary(
        (context, theme) => SettingsEvent.setTheme(theme: theme),
      );

  @override
  Widget build(BuildContext context) => BlocProvider<SettingsBloc>(
        create: (context) => SettingsBloc(context.repository.settings),
        child: child,
      );
}
