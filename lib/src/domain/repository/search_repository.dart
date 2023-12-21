part of '../repository.dart';

abstract class SearchRepository {
  List<String> getKeywords();

  Future<void> setKeyword({required String keyword});

  Future<void> removeKeywords();
}
