import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:photo_editor/src/feature/editor/page/editor_page.dart';
import 'package:photo_editor/src/feature/gallery/page/gallery_page.dart';
import 'package:photo_manager/photo_manager.dart';

part 'app_router.gr.dart';

@CustomAutoRouter(
  transitionsBuilder: TransitionsBuilders.slideLeft,
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute<void>(page: GalleryPage, path: '/gallery', initial: true),
    AutoRoute<void>(page: EditorPage, path: '/editor'),
  ],
)
class AppRouter extends _$AppRouter {}
