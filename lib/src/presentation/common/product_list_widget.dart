import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/data/model.dart';
import 'package:shimmer/shimmer.dart';

class ProductListWidget extends ConsumerWidget {
  final List<ProductElement> items;
  final bool hasReachEnd;
  final bool Function(ScrollNotification)? onNotification;

  const ProductListWidget({
    super.key,
    required this.items,
    required this.hasReachEnd,
    required this.onNotification,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NotificationListener<ScrollNotification>(
      onNotification: onNotification,
      child: StaggeredGridView.countBuilder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(16.0),
        crossAxisCount: 2,
        mainAxisSpacing: 16.0,
        crossAxisSpacing: 8.0,
        itemCount: hasReachEnd ? items.length : items.length + 1,
        itemBuilder: (context, index) => index != items.length
            ? ProductListWidgetItem(item: items[index])
            : const ProductLoading(),
        staggeredTileBuilder: (index) => !hasReachEnd && index == items.length
            ? const StaggeredTile.fit(2)
            : const StaggeredTile.fit(1),
      ),
    );
  }
}

class ProductListWidgetItem extends StatelessWidget {
  final ProductElement item;

  const ProductListWidgetItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              color: Colors.transparent,
              child: AspectRatio(
                aspectRatio: 1,
                child: CachedNetworkImage(
                  imageUrl: item.thumbnail,
                  placeholder: (context, url) => Shimmer.fromColors(
                    baseColor: Theme.of(context).colorScheme.shadow.withOpacity(0.1),
                    highlightColor:
                        Theme.of(context).colorScheme.shadow.withOpacity(0.15),
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                  fit: BoxFit.cover,
                  fadeOutDuration: const Duration(milliseconds: 300),
                  fadeInDuration: const Duration(milliseconds: 300),
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

class ProductLoading extends StatelessWidget {
  const ProductLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.0,
      child: Shimmer.fromColors(
        baseColor: Theme.of(context).colorScheme.shadow.withOpacity(0.1),
        highlightColor: Theme.of(context).colorScheme.shadow.withOpacity(0.15),
        child: Container(
          color: Colors.white,
        ),
      ),
    );
  }
}
