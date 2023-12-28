part of '../controller.dart';

@riverpod
class SearchController extends _$SearchController {
  @override
  FutureOr<SearchState> build({required String query}) async {
    return _fetchData(query: query);
  }

  Future<SearchState> _fetchData({required String query}) async {
    final product =
        await ref.watch(productRepositoryProvider).searchProduct(query: query, start: 0);

    return SearchState(
      currentIndex: product.products.length,
      products: product.products,
      hasReachEnd: product.products.length >= product.total,
    );
  }
}
