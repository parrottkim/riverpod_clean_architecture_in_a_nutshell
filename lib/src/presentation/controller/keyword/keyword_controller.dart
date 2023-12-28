part of '../controller.dart';

@riverpod
class KeywordController extends _$KeywordController {
  @override
  KeywordState build() {
    return getKeywords();
  }

  KeywordState getKeywords() {
    final keywords = ref.watch(searchRepositoryProvider).getKeywords();
    return KeywordInitial(keywords: keywords);
  }

  Future<void> addKeyword({required String text}) async {
    final keyword = Keyword(keyword: text, date: DateTime.now());
    final List<Keyword> list =
        state.keywords.isNotEmpty && state.keywords.first.keyword == text
            ? state.keywords
            : [keyword, ...state.keywords];

    await ref.watch(searchRepositoryProvider).setKeyword(keywords: list);
    state = KeywordSearched(keywords: list);
  }

  Future<void> removeKeywords() async {
    await ref.watch(searchRepositoryProvider).removeKeywords();
    state = state.copyWith(keywords: []);
  }
}
