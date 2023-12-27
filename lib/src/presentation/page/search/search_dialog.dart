import 'package:flutter/material.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/search/widget/search_dialog_appbar_widget.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/search/widget/search_dialog_popular_widget.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/search/widget/search_dialog_recent_widget.dart';

class SearchDialog extends StatelessWidget {
  const SearchDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SearchDialogAppBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchDialogRecentWidget(),
            SearchDialogPopularWidget(),
          ],
        ),
      ),
    );
  }
}
