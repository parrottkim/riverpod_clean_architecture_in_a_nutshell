part of '../source.dart';

class ProductDataSource implements ProductRepository {
  final ProductService _service;

  ProductDataSource({required ProductService service}) : _service = service;

  @override
  Future<Product> getProductList({required int start, int limit = 20}) =>
      _service.getProductList(start: start, limit: limit);

  @override
  Future<List<String>> getCategoryList() =>_service.getCategoryList();
}

@riverpod
ProductRepository productRepository(ProductRepositoryRef ref) {
  final client = ref.watch(httpProvider);
  return ProductDataSource(service: ProductService(client));
}
