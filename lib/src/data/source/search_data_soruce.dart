part of '../source.dart';

class SearchDataSource implements SearchRepository {
  final SharedPreferences _prefs;

  SearchDataSource({required SharedPreferences prefs}) : _prefs = prefs;

  @override
  List<String> getKeywords() {
    final keywords = _prefs.getStringList('search.keywords');
    return keywords ?? [];
  }

  @override
  Future<void> setKeyword({required String keyword}) async {
    final keywords = getKeywords();
    print(keywords);
    await _prefs.setStringList('search.keywords', [...keywords, keyword]);
  }

  @override
  Future<void> removeKeywords() async {
    await _prefs.remove('search.keywords');
  }
}

@riverpod
SearchRepository searchRepository(SearchRepositoryRef ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return SearchDataSource(prefs: prefs);
}
