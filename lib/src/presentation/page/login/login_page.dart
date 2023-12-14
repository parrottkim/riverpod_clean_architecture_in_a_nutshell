import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
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
    final loginState = ref.watch(loginControllerProvider).value;

    ref.listen<AsyncValue<LoginState>>(loginControllerProvider, (_, state) {
      switch (state.value) {
        case LoginAuthenticated():
          context.go(path ?? Routes.home);
      }
    });

    final usernameController = useTextEditingController();
    final passwordController = useTextEditingController();

    useListenable(usernameController);
    useListenable(passwordController);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Logo(
                size: 22.0,
                color: Theme.of(context).colorScheme.primary,
              ),
              SizedBox(width: 6.0),
              Text(
                'DUMMYSHOP',
                textHeightBehavior: const TextHeightBehavior(
                  applyHeightToLastDescent: false,
                  leadingDistribution: TextLeadingDistribution.even,
                ),
                style: GoogleFonts.oswald(
                  textStyle: TextStyle(
                    fontSize: 36.0,
                    color: Theme.of(context).colorScheme.primary,
                    height: 1.2,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30.0),
          if (loginState is LoginInvalid) LoginInvalidContainer(),
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
                SizedBox(height: 12.0),
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
          SizedBox(height: 12.0),
          ContainedButton(
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
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}
