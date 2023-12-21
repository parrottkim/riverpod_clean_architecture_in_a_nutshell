part of '../model.dart';

@freezed
class Cart with _$Cart {
  const factory Cart({
    required List<CartElement> carts,
    required int total,
    required int skip,
    required int limit,
  }) = _Cart;

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);
}

@freezed
class CartElement with _$CartElement {
  const factory CartElement({
    required int id,
    required List<CartProductElement> products,
    required int total,
    required int discountedTotal,
    required int userId,
    required int totalCartProductElements,
    required int totalQuantity,
  }) = _CartElement;

  factory CartElement.fromJson(Map<String, dynamic> json) => _$CartElementFromJson(json);
}

@freezed
class CartProductElement with _$CartProductElement {
  const factory CartProductElement({
    required int id,
    required String title,
    required int price,
    required int quantity,
    required int total,
    required double discountPercentage,
    required int discountedPrice,
    required String thumbnail,
  }) = _CartProductElement;

  factory CartProductElement.fromJson(Map<String, dynamic> json) =>
      _$CartProductElementFromJson(json);
}
