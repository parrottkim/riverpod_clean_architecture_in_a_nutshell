part of '../controller.dart';

@riverpod
class ProductController extends _$ProductController {
  @override
  Future<ProductState> build() async {
    return _fetchData();
  }

  Future<ProductState> _fetchData() async {
    final category = await ref.watch(categoryControllerProvider.future);
    final product = category.categories[category.selectedIndex].tag == 'all'
        ? await ref.watch(productRepositoryProvider).getProductList(start: 0)
        : await ref.watch(productRepositoryProvider).getProductListWithCategory(
            category: category.categories[category.selectedIndex].tag, start: 0);
    print(product);
    return ProductState(
      currentIndex: product.products.length,
      products: product.products,
      hasReachEnd: product.products.length >= product.total,
    );
  }

  Future<void> loadMore() async {
    final value = state.valueOrNull;
    final category = await ref.watch(categoryControllerProvider.future);

    if (value != null) {
      if (value.hasReachEnd) return;

      state = await AsyncValue.guard(() async {
        final product = category.categories[category.selectedIndex].tag == 'all'
            ? await ref
                .watch(productRepositoryProvider)
                .getProductList(start: value.currentIndex)
            : await ref.watch(productRepositoryProvider).getProductListWithCategory(
                category: category.categories[category.selectedIndex].tag,
                start: value.currentIndex);

        final length = value.products.length + product.products.length;

        return value.copyWith(
          hasReachEnd: length >= product.total,
          currentIndex: product.products.isEmpty ? value.products.length : length,
          products: [...value.products, ...product.products],
        );
      });
    }
  }
}
