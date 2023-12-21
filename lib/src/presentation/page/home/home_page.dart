import 'package:flutter/material.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/home/widget/home_appbar.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/home/widget/home_article.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/home/widget/home_banner.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/home/widget/home_category.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppBar(),
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
