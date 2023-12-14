part of '../model.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required List<ProductElement> products,
    required int total,
    required int skip,
    required int limit,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}

@freezed
class ProductElement with _$ProductElement {
  const factory ProductElement({
    required int id,
    required String title,
    required String description,
    required int price,
    required double discountPercentage,
    required double rating,
    required int stock,
    required String brand,
    required String category,
    required String thumbnail,
    required List<String> images,
  }) = _ProductElement;

  factory ProductElement.fromJson(Map<String, dynamic> json) =>
      _$ProductElementFromJson(json);
}
