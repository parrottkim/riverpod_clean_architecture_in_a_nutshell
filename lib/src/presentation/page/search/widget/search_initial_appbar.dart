import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/controller/controller.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/shared/widget.dart';

class SearchInitialAppBar extends HookConsumerWidget implements PreferredSizeWidget {
  const SearchInitialAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final keywordController = useTextEditingController();

    useListenable(keywordController);

    return CustomAppBar(
      leading: CustomIconButton(
        onTap: () => Navigator.pop(context),
        icon: Icons.chevron_left,
      ),
      title: OutlinedTextField(
        controller: keywordController,
        prefixIcon: Icons.search,
        contentPadding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        hintText: 'Search products',
        onSubmitted: (text) {
          ref.read(searchControllerProvider.notifier).addKeyword(text: text);
          keywordController.clear();
        },
      ),
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
