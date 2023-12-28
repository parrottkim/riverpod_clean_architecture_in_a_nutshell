import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/controller/controller.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/search/widget/search_appbar_widget.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/search/widget/search_autocomplete_form_widget.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/search/widget/search_completed_form_widget.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/search/widget/search_initial_form_widget.dart';

class SearchPage extends HookConsumerWidget {
  final String? query;

  const SearchPage({
    super.key,
    required this.query,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print(query);

    final search = ref.watch(keywordControllerProvider);

    final controller = useTextEditingController();

    useListenable(controller);

    return Scaffold(
      appBar: SearchAppBarWidget(controller: controller),
      body: switch (search) {
        KeywordInitial() => controller.text.isEmpty
            ? const SearchInitialFormWidget()
            : SearchAutocompleteFormWidget(controller: controller),
        KeywordSearched() =>
          query != null ? SearchCompletedFormWidget(query: query!) : Container(),
      },
    );
  }
}
