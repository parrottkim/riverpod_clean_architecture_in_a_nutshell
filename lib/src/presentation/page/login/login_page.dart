import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/controller/controller.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/login/widget/login_form_widget.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/login/widget/login_invalid_widget.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/login/widget/login_logo_widget.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/router/router.dart';

class LoginPage extends ConsumerWidget {
  final String? path;

  const LoginPage({
    super.key,
    this.path,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginState = ref.watch(loginControllerProvider);

    ref.listen<LoginState>(loginControllerProvider, (_, state) {
      switch (state) {
        case LoginAuthenticated():
          context.go(path ?? Routes.home);
      }
    });

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const LoginLogoWidget(),
          if (loginState is LoginInvalid) const LoginInvalidWidget(),
          const LoginFormWidget(),
        ],
      ),
    );
  }
}
