import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/data/model.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/controller/controller.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/router/router.dart';

class SearchAutocompleteFormWidget extends ConsumerWidget {
  final TextEditingController controller;

  const SearchAutocompleteFormWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final keywordState = ref.watch(keywordControllerProvider) as KeywordInitial;
    final categoryState = ref.watch(categoryControllerProvider).value!;

    final categories = categoryState.categories
        .where((element) => element.tag.contains(controller.text.toLowerCase()))
        .toList();
    final keywords = keywordState.keywords
        .where((element) => element.keyword.contains(controller.text))
        .toList()
        .take(5);

    return ListView(
      shrinkWrap: true,
      children: [
        ...keywords.map(
          (element) => AutocompleteListItem(
              controller: controller, icon: Icons.history, item: element),
        ),
        ...categories.map(
          (element) => AutocompleteListItem(
              controller: controller, icon: Icons.search, item: element),
        ),
      ],
    );
  }
}

class AutocompleteListItem extends ConsumerWidget {
  final TextEditingController controller;
  final IconData icon;
  final dynamic item;

  const AutocompleteListItem({
    super.key,
    required this.controller,
    required this.icon,
    required this.item,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        final text = item is Keyword ? item.keyword : item.tag;
        controller.text = text;
        ref.read(keywordControllerProvider.notifier).addKeyword(text: text);
        context.goNamed(RouteNames.search, queryParameters: {'query': text});
      },
      child: Ink(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 8.0),
            Expanded(
              child: Text(
                item is Keyword ? item.keyword : item.tag,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            if (item is Keyword)
              Text(
                DateFormat('MM.dd').format(item.date),
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: Theme.of(context).colorScheme.outline,
                    ),
              ),
          ],
        ),
      ),
    );
  }
}
