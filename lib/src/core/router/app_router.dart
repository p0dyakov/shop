import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:transmitter/src/feature/room/page/connect_to_owner_page.dart';
import 'package:transmitter/src/feature/room/page/initial_page.dart';
import 'package:transmitter/src/feature/room/page/room_page.dart';
import 'package:transmitter/src/feature/settings/page/settings_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute<void>(page: RoomPage),
    AutoRoute<void>(page: SettingsPage),
    AutoRoute<void>(page: InitialPage, initial: true),
    AutoRoute<void>(page: ConnectToOwnerPage),
  ],
)
class AppRouter extends _$AppRouter {}
