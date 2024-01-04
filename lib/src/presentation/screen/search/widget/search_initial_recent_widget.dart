import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/controller/controller.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/widget/chip.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/router/router.dart';

class SearchInitialRecentWidget extends HookConsumerWidget {
  final TextEditingController controller;

  const SearchInitialRecentWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final search = ref.watch(keywordControllerProvider);

    final isVisible = useState<bool>(search.keywords.isNotEmpty);

    ref.listen<KeywordState>(keywordControllerProvider, (_, state) {
      if (state.keywords.isNotEmpty) {
        isVisible.value = true;
      }
    });

    return AnimatedSize(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInQuad,
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 300),
        opacity: search.keywords.isNotEmpty ? 1 : 0,
        onEnd: () {
          if (search.keywords.isEmpty) {
            isVisible.value = false;
          }
        },
        child: isVisible.value
            ? Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 4.0, top: 16.0),
                      child: Row(
                        children: [
                          Text(
                            Intl.message('search_initial_recent'),
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () async => await ref
                                .read(keywordControllerProvider.notifier)
                                .removeKeywords(),
                            borderRadius: BorderRadius.circular(12.0),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 4.0),
                              child: Text(
                                Intl.message('search_initial_recent_erase'),
                                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: Theme.of(context).colorScheme.primary,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    SizedBox(
                      height: 31.0,
                      child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        itemCount:
                            search.keywords.length < 10 ? search.keywords.length : 10,
                        itemBuilder: (context, index) => CustomChip(
                          onTap: () {
                            controller.text = search.keywords[index].keyword;
                            ref
                                .read(keywordControllerProvider.notifier)
                                .addKeyword(text: search.keywords[index].keyword);
                            context.goNamed(RouteNames.search, queryParameters: {
                              'query': search.keywords[index].keyword
                            });
                          },
                          borderColor: Theme.of(context).colorScheme.outline,
                          child: Text(search.keywords[index].keyword),
                        ),
                        separatorBuilder: (context, index) => const SizedBox(width: 4.0),
                      ),
                    ),
                  ],
                ),
              )
            : null,
      ),
    );
  }
}
