part of '../repository.dart';

abstract class SearchRepository {
  List<Keyword> getKeywords();

  Future<void> setKeyword({required List<Keyword> keywords});

  Future<void> removeKeywords();
}
