import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/controller/controller.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/shared/widget.dart';

class SearchInitialKeyword extends ConsumerWidget {
  const SearchInitialKeyword({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final search = ref.watch(searchControllerProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 4.0, top: 16.0),
          child: Row(
            children: [
              Text(
                'Recent Keywords',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Spacer(),
              InkWell(
                onTap: () async =>
                    await ref.read(searchControllerProvider.notifier).removeKeywords(),
                borderRadius: BorderRadius.circular(12.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
                  child: Text(
                    'Erase all',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16.0),
        SizedBox(
          height: 31.0,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            itemCount:
                search.recentKeywords.length < 10 ? search.recentKeywords.length : 10,
            itemBuilder: (context, index) => CustomChip(
              onTap: () {},
              borderColor: Theme.of(context).colorScheme.outline,
              child: Text(search.recentKeywords[index]),
            ),
            separatorBuilder: (context, index) => SizedBox(width: 4.0),
          ),
        ),
      ],
    );
  }
}
