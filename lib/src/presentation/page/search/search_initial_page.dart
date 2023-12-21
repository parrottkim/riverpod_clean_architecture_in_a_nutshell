import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/controller/controller.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/search/widget/search_initial_appbar.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/search/widget/search_initial_keywords.dart';

class SearchInitialPage extends ConsumerWidget {
  const SearchInitialPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final search = ref.watch(searchControllerProvider);

    return Scaffold(
      appBar: SearchInitialAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (search.recentKeywords.isNotEmpty) SearchInitialKeyword(),
          ],
        ),
      ),
    );
  }
}
