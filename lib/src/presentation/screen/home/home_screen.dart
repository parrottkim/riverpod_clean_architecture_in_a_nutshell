import 'package:flutter/material.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/screen/home/widget/home_appbar_widget.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/screen/home/widget/home_article_widget.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/screen/home/widget/home_banner_widget.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/screen/home/widget/home_category_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeAppBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeBannerWidget(),
            SizedBox(height: 32.0),
            HomeArticleWidget(),
            SizedBox(height: 32.0),
            HomeCategoryWidget(),
          ],
        ),
      ),
    );
  }
}
