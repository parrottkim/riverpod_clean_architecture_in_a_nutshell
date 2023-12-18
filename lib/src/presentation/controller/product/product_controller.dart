part of '../controller.dart';

@riverpod
class ProductController extends _$ProductController {
  @override
  Future<ProductState> build() async {
    return _fetchData(start: 0);
  }

  Future<ProductState> _fetchData({required int start}) async {
    final category = await ref.watch(categoryControllerProvider.future);
    final products = category.categories[category.selectedIndex].tag == 'all'
        ? await ref.watch(productRepositoryProvider).getProductList(start: start)
        : await ref.watch(productRepositoryProvider).getProductListWithCategory(
            category: category.categories[category.selectedIndex].tag, start: start);
    print(products);
    return ProductState(currentIndex: products.length, products: products);
  }

  Future<void> loadMore() async {
    final value = state.valueOrNull;
    final category = await ref.watch(categoryControllerProvider.future);

    if (value != null) {
      if (value.hasReachEnd) return;

      state = const AsyncValue.loading();
      state = await AsyncValue.guard(() async {
        final products = category.categories[category.selectedIndex].tag == 'all'
            ? await ref
                .watch(productRepositoryProvider)
                .getProductList(start: value.currentIndex)
            : await ref.watch(productRepositoryProvider).getProductListWithCategory(
                category: category.categories[category.selectedIndex].tag,
                start: value.currentIndex);
        return value.copyWith(
            hasReachEnd: products.isEmpty,
            currentIndex: products.isEmpty
                ? value.products.length
                : value.products.length + products.length,
            products: [...value.products, ...products]);
      });
    }
  }
}
