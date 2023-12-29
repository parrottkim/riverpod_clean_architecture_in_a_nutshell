import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/screen/product/widget/product_appbar_widget.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/screen/product/widget/product_content_widget.dart';

class ProductScreen extends ConsumerWidget {
  static const double bottomHeight = 48.0;

  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      appBar: ProductAppBarWidget(),
      body: ProductContentWidget(),
    );
  }
}
