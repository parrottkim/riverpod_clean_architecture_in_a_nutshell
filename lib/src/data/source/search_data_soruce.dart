part of '../source.dart';

class SearchDataSource implements SearchRepository {
  final SharedPreferences _prefs;

  SearchDataSource({required SharedPreferences prefs}) : _prefs = prefs;

  @override
  List<Keyword> getKeywords() {
    final keywords = _prefs.getString('search.keywords');
    if (keywords == null) {
      return [];
    }
    final list = json.decode(keywords);
    return List<Keyword>.from(list.map((element) => Keyword.fromJson(element)));
  }

  @override
  Future<void> setKeyword({required List<Keyword> keywords}) async {
    await _prefs.setString('search.keywords', json.encode(keywords));
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
