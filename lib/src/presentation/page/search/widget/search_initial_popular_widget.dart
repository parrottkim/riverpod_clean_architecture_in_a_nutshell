import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/data/model.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/shared/widget.dart';

class SearchInitialPopularWidget extends StatelessWidget {
  const SearchInitialPopularWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            Intl.message('search_initial_popular'),
            style: Theme.of(context).textTheme.titleLarge,
          ),
          SizedBox(height: 16.0),
          StaggeredGridView.countBuilder(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            crossAxisCount: 2,
            mainAxisSpacing: 16.0,
            crossAxisSpacing: 32.0,
            itemCount: WidgetPrefab.popularKeywordItems.length,
            itemBuilder: (context, index) => KeywordListItem(
                index: index, item: WidgetPrefab.popularKeywordItems[index]),
            staggeredTileBuilder: (index) => StaggeredTile.fit(1),
          ),
        ],
      ),
    );
  }
}

class KeywordListItem extends StatelessWidget {
  final int index;
  final PopularKeyword item;

  const KeywordListItem({
    super.key,
    required this.index,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Stack(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${index + 1}',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 12.0),
                Text(
                  item.name,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Spacer(),
                SizedBox(
                  width: 24.0,
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
                      PopularKeywordType.up => Icon(
                          Icons.arrow_drop_up,
                          color: Colors.red[300],
                          size: 16.0,
                        ),
                      PopularKeywordType.down => Icon(
                          Icons.arrow_drop_down,
                          color: Colors.blue[300],
                          size: 16.0,
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
