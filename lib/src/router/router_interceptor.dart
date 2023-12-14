import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/controller/controller.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/router/router.dart';

part 'router_interceptor.g.dart';

abstract class RouterInterceptor {
  FutureOr<String?> canGo(BuildContext context, GoRouterState routerState);
}

@riverpod
AppRouterInterceptor appRouterInterceptor(AppRouterInterceptorRef ref) {
  return AppRouterInterceptor(ref);
}

class AppRouterInterceptor implements RouterInterceptor {
  final Ref ref;

  AppRouterInterceptor(this.ref);

  @override
  FutureOr<String?> canGo(BuildContext context, GoRouterState state) async {
    final loginState = ref.read(loginControllerProvider).value;

    final uri = state.uri;

    final isSplash = uri.path == Routes.splash;
    final isLogin = uri.path.startsWith(Routes.login);

    if (!isSplash) {
      if (loginState case LoginInitial()) {
        return state.namedLocation(RouteNames.splash,
            queryParameters: isSplash || isLogin ? {} : {'redirect_to': uri.path});
      }
    }

    if (isSplash) {
      if (loginState case LoginAuthenticated()) {
        return uri.queryParameters.isNotEmpty
            ? uri.queryParameters['redirect_to']!
            : Routes.home;
      }
      if (loginState case LoginUnauthenticated()) {
        return state.namedLocation(RouteNames.login,
            queryParameters: isSplash || isLogin ? {} : {'redirect_to': uri.path});
      }
    }

    if (!isLogin) {
      if (loginState case LoginInitial()) {
        return state.namedLocation(RouteNames.splash,
            queryParameters: isSplash || isLogin ? {} : {'redirect_to': uri.path});
      }
    }

    return null;
  }
}
