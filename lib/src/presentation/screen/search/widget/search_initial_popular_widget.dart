import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/data/model.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/controller/controller.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/router/router.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/shared/widget.dart';

class SearchInitialPopularWidget extends StatelessWidget {
  final TextEditingController controller;

  const SearchInitialPopularWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
          child: Text(
            Intl.message('search_initial_popular'),
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        const SizedBox(height: 16.0),
        StaggeredGridView.countBuilder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          crossAxisCount: 2,
          itemCount: WidgetPrefab.popularKeywordItems.length,
          itemBuilder: (context, index) => KeywordListItem(
              controller: controller,
              index: index,
              item: WidgetPrefab.popularKeywordItems[index]),
          staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
        ),
      ],
    );
  }
}

class KeywordListItem extends ConsumerWidget {
  final TextEditingController controller;
  final int index;
  final PopularKeyword item;

  const KeywordListItem({
    super.key,
    required this.controller,
    required this.index,
    required this.item,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        controller.text = item.keyword;
        ref.read(keywordControllerProvider.notifier).addKeyword(text: item.keyword);
        context.goNamed(RouteNames.search, queryParameters: {'query': item.keyword});
      },
      borderRadius: BorderRadius.circular(8.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        child: Stack(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 16.0,
                  child: Text(
                    '${index + 1}',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(width: 12.0),
                Text(
                  item.keyword,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const Spacer(),
                SizedBox(
                  width: 24.0,
                  height: 16.0,
                  child: Center(
                    child: switch (item.type) {
                      PopularKeywordType.fresh => Text(
                          'new',
                          textHeightBehavior: const TextHeightBehavior(
                            applyHeightToLastDescent: false,
                            leadingDistribution: TextLeadingDistribution.even,
                          ),
                          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                                fontWeight: FontWeight.w700,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                        ),
                      PopularKeywordType.up => SvgPicture.asset(
                          'assets/svg/arrow_drop_up.svg',
                          colorFilter: ColorFilter.mode(
                            Colors.red[300]!,
                            BlendMode.srcIn,
                          ),
                          fit: BoxFit.fitWidth,
                        ),
                      PopularKeywordType.down => SvgPicture.asset(
                          'assets/svg/arrow_drop_down.svg',
                          colorFilter: ColorFilter.mode(
                            Colors.blue[300]!,
                            BlendMode.srcIn,
                          ),
                          fit: BoxFit.fitWidth,
                        ),
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
