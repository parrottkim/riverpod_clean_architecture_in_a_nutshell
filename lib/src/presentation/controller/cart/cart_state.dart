part of '../controller.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    required List<CartProductElement> products,
  }) = _CartState;
}
