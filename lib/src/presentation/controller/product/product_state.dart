part of '../controller.dart';

@freezed
sealed class ProductState with _$ProductState {
  factory ProductState({
    required Product product,
  }) = _ProductState;
}
