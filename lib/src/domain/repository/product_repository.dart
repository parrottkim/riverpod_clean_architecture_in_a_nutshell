part of '../repository.dart';

abstract class ProductRepository {
  Future<List<String>> getCategoryList();

  Future<List<Product>> getProductList({required int start, int limit = 6});

  Future<List<Product>> getProductListWithCategory(
      {required String category, required int start, int limit = 6});
}
