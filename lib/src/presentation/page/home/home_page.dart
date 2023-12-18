import 'package:flutter/material.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/home/widget/home_banner.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/home/widget/home_category_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: [
          HomeBanner(),
          SizedBox(height: 16.0),
          HomeCategoryList(),
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
