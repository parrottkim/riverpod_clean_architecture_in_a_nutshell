import 'package:flutter/material.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/search/widget/search_initial_popular_widget.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/search/widget/search_initial_recent_widget.dart';

class SearchInitialFormWidget extends StatelessWidget {
  const SearchInitialFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SearchInitialRecentWidget(),
          SearchInitialPopularWidget(),
        ],
      ),
    );
  }
}
