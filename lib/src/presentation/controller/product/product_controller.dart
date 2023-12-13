part of '../controller.dart';

@riverpod
class ProductController extends _$ProductController {
  @override
  Future<ProductState> build() async {
    return _fetchData(start: 0);
  }

  Future<ProductState> _fetchData({required int start}) async {
    final product =
        await ref.watch(productRepositoryProvider).getProductList(start: start);
    return ProductState(product: product);
  }
}
