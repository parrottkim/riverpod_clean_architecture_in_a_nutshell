import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/product/widget/product_appbar.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/product/widget/product_content.dart';

class ProductPage extends ConsumerWidget {
  static const double bottomHeight = 48.0;

  const ProductPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      appBar: ProductAppBar(),
      body: ProductContent(),
    );
  }
}
