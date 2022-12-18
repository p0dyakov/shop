import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shop/src/feature/shop/page/product_page.dart';
import 'package:shop/src/feature/shop/page/products_page.dart';
import 'package:shop/src/feature/shop/page/shops_page.dart';
import 'package:shop/src/feature/shop/model/shop.dart';

part 'app_router.gr.dart';

@CustomAutoRouter(
  transitionsBuilder: TransitionsBuilders.slideLeft,
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute<void>(page: ShopsPage, path: '/shops', initial: true),
    AutoRoute<void>(page: ProductPage, path: '/product'),
    AutoRoute<void>(page: ShopProductsPage, path: '/shop_products'),
  ],
)
class AppRouter extends _$AppRouter {}
