import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/controller/controller.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/router/router.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/shared/widget.dart';

class SearchAppBarWidget extends HookConsumerWidget implements PreferredSizeWidget {
  final TextEditingController controller;

  const SearchAppBarWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomAppBar(
      leading: CustomIconButton(
        onTap: () => Navigator.pop(context),
        icon: Icons.chevron_left,
      ),
      title: OutlinedTextField(
        controller: controller,
        autofocus: true,
        prefixIcon: Icons.search,
        contentPadding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        hintText: Intl.message('search_initial_hint'),
        onChanged: (text) => ref.invalidate(keywordControllerProvider),
        onSubmitted: (text) {
          ref.read(keywordControllerProvider.notifier).addKeyword(text: text);
          context.goNamed(RouteNames.search, queryParameters: {'query': text});
        },
      ),
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
