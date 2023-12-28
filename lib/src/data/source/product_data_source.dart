part of '../source.dart';

class ProductDataSource implements ProductRepository {
  final ProductService _service;

  ProductDataSource({required ProductService service}) : _service = service;

  @override
  Future<List<String>> getCategoryList() => _service.getCategoryList();

  @override
  Future<Product> getProductList({required int start, int limit = 10}) =>
      _service.getProductList(start: start, limit: limit);

  @override
  Future<Product> getProductListWithCategory(
          {required String category, required int start, int limit = 10}) =>
      _service.getProductListWithCategory(category: category, start: start, limit: limit);

  @override
  Future<Product> searchProduct(
          {required String query, required int start, int limit = 10}) =>
      _service.searchProduct(query: query, start: start, limit: limit);
}

@riverpod
ProductRepository productRepository(ProductRepositoryRef ref) {
  final client = ref.watch(httpProvider);
  return ProductDataSource(service: ProductService(client));
}
