import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/data/model.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/controller/controller.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/shared/theme/theme.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/shared/widget.dart';

class ProductContent extends ConsumerWidget {
  const ProductContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(productControllerProvider);
    return switch (product) {
      AsyncData(:final value) => ProductList(state: value),
      _ => _loading(),
    };
  }

  Widget _loading() {
    return Center(
      child: Logo(
        size: 20.0,
        isLoading: true,
        borderColor: KeyColor.neutral.tone(70),
        iconColor: KeyColor.neutral.tone(70),
      ),
    );
  }
}

class ProductList extends ConsumerWidget {
  final ProductState state;

  const ProductList({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NotificationListener<ScrollNotification>(
      child: StaggeredGridView.countBuilder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16.0),
        crossAxisCount: 2,
        mainAxisSpacing: 16.0,
        crossAxisSpacing: 8.0,
        itemCount: state.hasReachEnd ? state.products.length : state.products.length + 1,
        itemBuilder: (context, index) => index != state.products.length
            ? ProductListItem(item: state.products[index])
            : const Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 32.0),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
        staggeredTileBuilder: (index) =>
            !state.hasReachEnd && index == state.products.length
                ? const StaggeredTile.fit(2)
                : const StaggeredTile.fit(1),
      ),
      onNotification: (notification) {
        if (notification.metrics.extentBefore == notification.metrics.maxScrollExtent) {
          ref.read(productControllerProvider.notifier).loadMore();
        }
        return false;
      },
    );
  }
}

class ProductListItem extends StatelessWidget {
  final ProductElement item;

  const ProductListItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Ink(
              padding: const EdgeInsets.all(16.0),
              color: Colors.white,
              child: AspectRatio(
                aspectRatio: 1,
                child: Ink.image(
                  image: NetworkImage(item.thumbnail),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 4.0),
            Text(
              item.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            Text(
              '\$${item.price}',
            ),
          ],
        ),
      ),
    );
  }
}
