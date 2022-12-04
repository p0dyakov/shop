import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:photo_editor/src/feature/permissions/page/permissions_page.dart';

part 'app_router.gr.dart';

@CustomAutoRouter(
  transitionsBuilder: TransitionsBuilders.slideLeft,
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute<void>(page: PermissionsPage, path: '/permissions'),
  ],
)
class AppRouter extends _$AppRouter {}
