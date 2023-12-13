part of 'source.dart';

class LocalDataSource implements LocalRepository {
  final SharedPreferences _prefs;

  LocalDataSource({required SharedPreferences prefs}) : _prefs = prefs;

  @override
  Token? getToken() {
    final token = _prefs.getString('access.token');
    if (token != null) {
      return Token.fromJson(json.decode(token));
    }
    return null;
  }

  @override
  Future<void> setToken({required Token token}) async {
    await _prefs.setString('access.token', json.encode(token));
  }

  @override
  Future<void> removeToken() async {
    await _prefs.remove('access.token');
  }
}

@riverpod
LocalRepository localRepository(LocalRepositoryRef ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return LocalDataSource(prefs: prefs);
}
