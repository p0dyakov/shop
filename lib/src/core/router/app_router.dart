import 'package:auto_route/auto_route.dart';
import 'package:offline_messenger/src/feature/discovery/page/discovery_page.dart';
import 'package:offline_messenger/src/feature/messenger/page/messenger_page.dart';
import 'package:offline_messenger/src/feature/select/page/select_role_page.dart';
import 'package:offline_messenger/src/feature/server/page/server_page.dart';

part 'app_router.gr.dart';

@CustomAutoRouter(
  transitionsBuilder: TransitionsBuilders.slideLeft,
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute<void>(page: SelectRolePage, initial: true, path: '/select_role'),
    AutoRoute<void>(page: DiscoveryPage, path: '/discovery'),
    AutoRoute<void>(page: MessengerPage, path: '/messenger'),
    AutoRoute<void>(page: ServerPage, path: '/server'),
  ],
)
class AppRouter extends _$AppRouter {}
