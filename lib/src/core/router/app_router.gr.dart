// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    ShopsRoute.name: (routeData) {
      return CustomPage<void>(
        routeData: routeData,
        child: const ShopsPage(),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ShopProductsRoute.name: (routeData) {
      final args = routeData.argsAs<ShopProductsRouteArgs>();
      return CustomPage<void>(
        routeData: routeData,
        child: ShopProductsPage(
          key: args.key,
          shop: args.shop,
        ),
        transitionsBuilder: TransitionsBuilders.slideLeft,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/shops',
          fullMatch: true,
        ),
        RouteConfig(
          ShopsRoute.name,
          path: '/shops',
        ),
        RouteConfig(
          ShopProductsRoute.name,
          path: '/shop_products',
        ),
      ];
}

/// generated route for
/// [ShopsPage]
class ShopsRoute extends PageRouteInfo<void> {
  const ShopsRoute()
      : super(
          ShopsRoute.name,
          path: '/shops',
        );

  static const String name = 'ShopsRoute';
}

/// generated route for
/// [ShopProductsPage]
class ShopProductsRoute extends PageRouteInfo<ShopProductsRouteArgs> {
  ShopProductsRoute({
    Key? key,
    required Shop shop,
  }) : super(
          ShopProductsRoute.name,
          path: '/shop_products',
          args: ShopProductsRouteArgs(
            key: key,
            shop: shop,
          ),
        );

  static const String name = 'ShopProductsRoute';
}

class ShopProductsRouteArgs {
  const ShopProductsRouteArgs({
    this.key,
    required this.shop,
  });

  final Key? key;

  final Shop shop;

  @override
  String toString() {
    return 'ShopProductsRouteArgs{key: $key, shop: $shop}';
  }
}
