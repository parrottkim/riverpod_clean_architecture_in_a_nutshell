import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/controller/controller.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/home/widget/home_article.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/home/widget/home_banner.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/home/widget/home_category.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(categoryControllerProvider);
    final account = ref.watch(loginControllerProvider).value;

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage('https://picsum.photos/200'),
            ),
            SizedBox(width: 12.0),
            if (account is LoginAuthenticated)
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
            customBorder: CircleBorder(),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeBanner(),
            SizedBox(height: 16.0),
            HomeArticle(),
            SizedBox(height: 16.0),
            HomeCategory(),
          ],
        ),
      ),
    );
  }
}
