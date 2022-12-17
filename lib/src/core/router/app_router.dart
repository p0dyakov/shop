import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shop/src/feature/shop/page/shop_page.dart';

part 'app_router.gr.dart';

@CustomAutoRouter(
  transitionsBuilder: TransitionsBuilders.slideLeft,
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute<void>(page: ShopPage, path: '/shop', initial: true),
  ],
)
class AppRouter extends _$AppRouter {}
