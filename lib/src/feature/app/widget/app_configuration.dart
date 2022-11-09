import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.g.dart';
import 'package:transmitter/src/core/extension/extensions.dart';
import 'package:transmitter/src/core/resource/theme/dark_theme.dart';
import 'package:transmitter/src/core/resource/theme/light_theme.dart';
import 'package:transmitter/src/core/router/app_router.dart';
import 'package:transmitter/src/feature/app/widget/app_router_builder.dart';
import 'package:transmitter/src/feature/settings/widget/scope/settings_scope.dart';

class AppConfiguration extends StatelessWidget {
  const AppConfiguration({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeMode = SettingsScope.themeModeOf(context, listen: true);

    return AppRouterBuilder(
      createRouter: (context) => AppRouter(),
      builder: (context, parser, delegate) => MaterialApp.router(
        routeInformationParser: parser,
        routerDelegate: delegate,
        onGenerateTitle: (context) => context.localized.appTitle,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        theme: appLightTheme,
        darkTheme: appDarkTheme,
        themeMode: themeMode,
      ),
    );
  }
}
