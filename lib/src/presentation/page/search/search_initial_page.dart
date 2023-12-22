import 'package:flutter/material.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/search/widget/search_initial_appbar_widget.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/search/widget/search_initial_popular_widget.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/search/widget/search_initial_recent_widget.dart';

class SearchInitialPage extends StatelessWidget {
  const SearchInitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SearchInitialAppBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // if (search.recentKeywords.isNotEmpty)
            SearchInitialRecentWidget(),
            SearchInitialPopularWidget(),
          ],
        ),
      ),
    );
  }
}
