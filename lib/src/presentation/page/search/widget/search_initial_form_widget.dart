import 'package:flutter/material.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/search/widget/search_initial_popular_widget.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/search/widget/search_initial_recent_widget.dart';

class SearchInitialFormWidget extends StatelessWidget {
  final TextEditingController controller;

  const SearchInitialFormWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SearchInitialRecentWidget(controller: controller),
          SearchInitialPopularWidget(controller: controller),
        ],
      ),
    );
  }
}
