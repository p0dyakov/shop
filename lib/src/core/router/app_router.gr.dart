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
          shop: args.shop,
          key: args.key,
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
    required Shop shop,
    Key? key,
  }) : super(
          ShopProductsRoute.name,
          path: '/shop_products',
          args: ShopProductsRouteArgs(
            shop: shop,
            key: key,
          ),
        );

  static const String name = 'ShopProductsRoute';
}

class ShopProductsRouteArgs {
  const ShopProductsRouteArgs({
    required this.shop,
    this.key,
  });

  final Shop shop;

  final Key? key;

  @override
  String toString() {
    return 'ShopProductsRouteArgs{shop: $shop, key: $key}';
  }
}
