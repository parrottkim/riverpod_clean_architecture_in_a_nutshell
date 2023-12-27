import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/layout/dashboard_layout.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/layout/shell_layout.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/account/account_page.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/home/home_page.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/login/login_page.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/product/product_page.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/search/search_page.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/splash/splash_page.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/router/router_interceptor.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/router/router_notifier.dart';

part 'router.g.dart';

final _key = GlobalKey<NavigatorState>();
final _shellKey = GlobalKey<NavigatorState>();
final _homeKey = GlobalKey<NavigatorState>();
final _productKey = GlobalKey<NavigatorState>();
final _accountKey = GlobalKey<NavigatorState>();

class RouteNames {
  static const String splash = 'splash';
  static const String login = 'login';
  static const String home = 'home';
  static const String product = 'product';
  static const String account = 'account';
  static const String search = 'search';
}

class Routes {
  static const String splash = '/';
  static const String login = '/login';
  static const String home = '/home';
  static const String product = '/product';
  static const String account = '/account';
  static const String search = 'search';
}

@riverpod
AppRouter router(RouterRef ref) {
  final notifier = ref.watch(routerNotifierProvider.notifier);

  return AppRouter(notifier, ref.watch(appRouterInterceptorProvider), Routes.splash);
}

class AppRouter {
  final Listenable notifier;
  final AppRouterInterceptor interceptor;
  final String initialLocation;

  AppRouter(this.notifier, this.interceptor, this.initialLocation);

  late final GoRouter config = GoRouter(
    navigatorKey: _key,
    initialLocation: initialLocation,
    refreshListenable: notifier,
    redirect: (context, state) async {
      final String? result = await interceptor.canGo(context, state);
      if (result != null) return result;
      return null;
    },
    debugLogDiagnostics: true,
    routes: [
      ShellRoute(
        navigatorKey: _shellKey,
        pageBuilder: (_, __, child) => NoTransitionPage(
          child: ShellLayout(child: child),
        ),
        routes: [
          GoRoute(
            name: RouteNames.splash,
            path: Routes.splash,
            pageBuilder: (context, state) {
              String? path = state.uri.queryParameters['redirect_to'];
              return NoTransitionPage(child: SplashPage(path: path));
            },
          ),
          GoRoute(
            name: RouteNames.login,
            path: Routes.login,
            pageBuilder: (context, state) {
              String? path = state.uri.queryParameters['redirect_to'];
              return buildFadeTransition(
                  context: context, state: state, child: LoginPage(path: path));
            },
          ),
          StatefulShellRoute.indexedStack(
            pageBuilder: (_, state, navigationShell) => MaterialPage<void>(
              key: state.pageKey,
              restorationId: state.pageKey.value,
              child: DashboardLayout(navigationShell: navigationShell),
            ),
            branches: [
              StatefulShellBranch(
                navigatorKey: _productKey,
                routes: [
                  GoRoute(
                    name: RouteNames.product,
                    path: Routes.product,
                    pageBuilder: (_, __) => const NoTransitionPage(
                      child: ProductPage(),
                    ),
                    routes: [
                      GoRoute(
                        name: RouteNames.search,
                        path: Routes.search,
                        parentNavigatorKey: _shellKey,
                        pageBuilder: (_, state) => MaterialPage(
                          key: state.pageKey,
                          restorationId: state.pageKey.value,
                          child: SearchPage(query: state.uri.queryParameters['index']),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              StatefulShellBranch(
                navigatorKey: _homeKey,
                routes: [
                  GoRoute(
                    name: RouteNames.home,
                    path: Routes.home,
                    pageBuilder: (_, __) => const NoTransitionPage(
                      child: HomePage(),
                    ),
                  ),
                ],
              ),
              StatefulShellBranch(
                navigatorKey: _accountKey,
                routes: [
                  GoRoute(
                    name: RouteNames.account,
                    path: Routes.account,
                    pageBuilder: (_, __) => const NoTransitionPage(
                      child: AccountPage(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

CustomTransitionPage buildFadeTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}
