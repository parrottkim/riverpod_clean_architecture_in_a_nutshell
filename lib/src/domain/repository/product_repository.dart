part of 'repository.dart';

abstract class ProductRepository {
  Future<Product> getProductList({required int start, int limit = 20});
}
