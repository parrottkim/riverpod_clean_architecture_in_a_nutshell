import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/controller/controller.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/product/widget/product_category.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/product/widget/product_content.dart';

class ProductPage extends ConsumerWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        actions: [
          InkWell(
            onTap: () async =>
                await ref.read(productControllerProvider.notifier).loadMore(),
            customBorder: const CircleBorder(),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                Icons.shopping_cart_outlined,
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48.0),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: ProductCategory(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: ProductContent(),
      ),
    );
  }
}
