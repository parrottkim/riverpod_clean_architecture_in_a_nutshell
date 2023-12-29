part of '../controller.dart';

@riverpod
class SearchController extends _$SearchController {
  @override
  FutureOr<SearchState> build(String query) async {
    return _fetchData(query: query);
  }

  Future<SearchState> _fetchData({required String query}) async {
    final product =
        await ref.watch(productRepositoryProvider).searchProduct(query: query, start: 0);

    return SearchState(
      query: query,
      currentIndex: product.products.length,
      products: product.products,
      hasReachEnd: product.products.length >= product.total,
    );
  }

  Future<void> loadMore() async {
    final value = state.valueOrNull;

    if (value != null) {
      if (value.hasReachEnd) return;

      state = await AsyncValue.guard(() async {
        final product = await ref
            .watch(productRepositoryProvider)
            .searchProduct(query: value.query, start: value.currentIndex);

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
