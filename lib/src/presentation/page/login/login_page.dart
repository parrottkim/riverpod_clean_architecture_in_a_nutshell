import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/data/model.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/controller/controller.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/login/widget/login_invalid_container.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/router/router.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/shared/widget.dart';

class LoginPage extends HookConsumerWidget {
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
        default:
      }
    });

    final usernameController = useTextEditingController();
    final passwordController = useTextEditingController();

    useListenable(usernameController);
    useListenable(passwordController);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          const Spacer(),
          Logo(
            borderColor: Theme.of(context).colorScheme.onSurface,
            iconColor: Theme.of(context).colorScheme.onSurface,
          ),
          const SizedBox(height: 6.0),
          Text(
            'DUMMYSHOP',
            textHeightBehavior: const TextHeightBehavior(
              applyHeightToLastDescent: false,
              leadingDistribution: TextLeadingDistribution.even,
            ),
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
          const Spacer(),
          if (loginState is LoginInvalid) const LoginInvalidContainer(),
          AutofillGroup(
            child: Column(
              children: [
                OutlinedTextField(
                  controller: usernameController,
                  prefixIcon: Icons.person,
                  hintText: 'Username',
                  autofillHints: const [AutofillHints.username],
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 12.0),
                OutlinedTextField(
                  onSubmitted: ref.read(loginControllerProvider.notifier).isValid(
                          username: usernameController.text,
                          password: passwordController.text)
                      ? (text) async {
                          TextInput.finishAutofillContext();
                          LoadingOverlay.show(context);
                          await ref.read(loginControllerProvider.notifier).login(
                                request: LoginRequest(
                                    username: usernameController.text,
                                    password: passwordController.text),
                              );
                          LoadingOverlay.hide();
                        }
                      : null,
                  controller: passwordController,
                  prefixIcon: Icons.key,
                  hintText: 'Password',
                  obscureText: true,
                  autofillHints: const [AutofillHints.password],
                  textInputAction: TextInputAction.next,
                ),
              ],
            ),
          ),
          const SizedBox(height: 12.0),
          CustomElevatedButton(
            onPressed: ref.read(loginControllerProvider.notifier).isValid(
                    username: usernameController.text, password: passwordController.text)
                ? () async {
                    TextInput.finishAutofillContext();
                    LoadingOverlay.show(context);
                    await ref.read(loginControllerProvider.notifier).login(
                          request: LoginRequest(
                              username: usernameController.text,
                              password: passwordController.text),
                        );
                    LoadingOverlay.hide();
                  }
                : null,
            child: const Text('Login'),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
