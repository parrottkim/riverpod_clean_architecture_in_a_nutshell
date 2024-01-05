import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/controller/controller.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/common/appbar.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/common/button.dart';

class HomeAppBarWidget extends ConsumerWidget implements PreferredSizeWidget {
  const HomeAppBarWidget({super.key});

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
                  Text(Intl.message('home_appbar'),
                      style: Theme.of(context).textTheme.titleMedium),
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
      actions: [
        InkWell(
          onTap: () {},
          customBorder: const CircleBorder(),
          child: const Padding(
            padding: EdgeInsets.all(12.0),
            child: Icon(
              Icons.translate,
            ),
          ),
        ),
        const CartIconButton(),
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
