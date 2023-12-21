import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/controller/controller.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/shared/widget.dart';

class HomeAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final account = ref.watch(loginControllerProvider);

    return CustomAppBar(
      title: switch (account) {
        LoginAuthenticated() => Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(account.user.image),
            ),
            const SizedBox(width: 12.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back!', style: Theme.of(context).textTheme.titleMedium),
                Text(
                  account.user.username,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            )
          ],
        ),
        _ => null,
      },
      actions: const [
        CartIconButton(),
      ],
    );
    return switch (account) {
      LoginAuthenticated() => AppBar(
          title: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(account.user.image),
              ),
              const SizedBox(width: 12.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Welcome Back!', style: Theme.of(context).textTheme.titleMedium),
                  Text(
                    account.user.username,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              )
            ],
          ),
          actions: [
            InkWell(
              onTap: () {},
              customBorder: const CircleBorder(),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Icon(
                  Icons.shopping_cart_outlined,
                ),
              ),
            ),
          ],
        ),
      _ => Container(),
    };
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
