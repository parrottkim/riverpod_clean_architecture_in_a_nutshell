import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/controller/controller.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/home/widget/home_banner.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(productControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: [
          HomeBanner(),
        ],
      ),
    );
  }
}

// [
// "smartphones",
// "laptops",
// "fragrances",
// "skincare",
// "groceries",
// "home-decoration",
// "furniture",
// "tops",
// "womens-dresses",
// "womens-shoes",
// "mens-shirts",
// "mens-shoes",
// "mens-watches",
// "womens-watches",
// "womens-bags",
// "womens-jewellery",
// "sunglasses",
// "automotive",
// "motorcycle",
// "lighting"
// ]
