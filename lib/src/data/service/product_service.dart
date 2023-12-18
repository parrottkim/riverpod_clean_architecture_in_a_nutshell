part of '../service.dart';

@RestApi()
abstract class ProductService {
  factory ProductService(Dio dio, {String baseUrl}) = _ProductService;

  @GET('products')
  Future<Product> getProductList({
    @Query('skip') required int start,
    @Query('limit') required int limit,
  });

  @GET('products/categories')
  Future<List<String>> getCategoryList();
}
