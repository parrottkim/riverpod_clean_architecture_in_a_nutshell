import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/data/model.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/controller/controller.dart';

class ProductList extends ConsumerWidget {
  final Product product;

  const ProductList({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NotificationListener<ScrollNotification>(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: product.products.length,
              itemBuilder: (context, index) => ListTile(
                onTap: () {},
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Image.network(
                      product.products[index].images[0],
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                title: Text(product.products[index].title),
                subtitle: Text(product.products[index].brand),
              ),
            ),
          ],
        ),
      ),
      onNotification: (notification) {
        if (notification.metrics.extentBefore == notification.metrics.maxScrollExtent) {
          // ref.read(productControllerProvider.notifier).loadMore();
        }
        return false;
      },
    );
  }
}
