part of '../repository.dart';

abstract class CartRepository {
  Future<Cart> getCartList({required int id});
}