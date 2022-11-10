import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:transmitter/src/feature/discovery/page/discovery_page.dart';
import 'package:transmitter/src/feature/settings/page/settings_page.dart';
import 'package:transmitter/src/feature/transmitter/page/transmitter_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute<void>(page: DiscoveryPage, initial: true),
    AutoRoute<void>(page: TransmitterPage),
    AutoRoute<void>(page: SettingsPage),
  ],
)
class AppRouter extends _$AppRouter {}
