import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/controller/controller.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/shared/widget.dart';

class AccountPage extends ConsumerWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final account = ref.watch(loginControllerProvider).value;
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () {},
            customBorder: const CircleBorder(),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                Icons.shopping_cart_outlined,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (account is LoginAuthenticated) Text('${account.user}'),
            SizedBox(height: 12.0),
            ContainedButton(
              onPressed: () async =>
                  await ref.read(loginControllerProvider.notifier).logout(),
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
