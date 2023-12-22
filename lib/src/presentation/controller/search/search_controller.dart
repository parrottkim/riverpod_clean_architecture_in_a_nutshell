part of '../controller.dart';

@riverpod
class SearchController extends _$SearchController {
  @override
  SearchState build() {
    return getKeywords();
  }

  SearchState getKeywords() {
    final keywords = ref.watch(searchRepositoryProvider).getKeywords();
    return SearchInitial(recentKeywords: keywords.reversed.toList());
  }

  Future<void> addKeyword({required String text}) async {
    if (state.recentKeywords.isNotEmpty && state.recentKeywords.first == text) return;
    await ref.watch(searchRepositoryProvider).setKeyword(keyword: text);
    state = state.copyWith(recentKeywords: [text, ...state.recentKeywords]);
  }

  Future<void> removeKeywords() async {
    await ref.watch(searchRepositoryProvider).removeKeywords();
    state = state.copyWith(recentKeywords: []);
  }
}
