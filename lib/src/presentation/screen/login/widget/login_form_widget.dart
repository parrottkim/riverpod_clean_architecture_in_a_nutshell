import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/data/model.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/controller/controller.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/shared/widget.dart';

class LoginFormWidget extends HookConsumerWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usernameController = useTextEditingController();
    final passwordController = useTextEditingController();

    useListenable(usernameController);
    useListenable(passwordController);

    return Expanded(
      child: Column(
        children: [
          AutofillGroup(
            child: Column(
              children: [
                OutlinedTextField(
                  controller: usernameController,
                  prefixIcon: Icons.person,
                  hintText: Intl.message('login_username'),
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
                  hintText: Intl.message('login_password'),
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
        ],
      ),
    );
  }
}
