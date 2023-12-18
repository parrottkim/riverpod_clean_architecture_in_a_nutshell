import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_color_utilities/material_color_utilities.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/controller/controller.dart';

class HomeCategoryList extends ConsumerWidget {
  const HomeCategoryList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(categoryControllerProvider);

    return switch (state) {
      AsyncData(:final value) => SizedBox(
          height: 120.0,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            itemCount: value.categories.length,
            itemBuilder: (context, index) =>
                CategoryListItem(item: value.categories[index]),
            separatorBuilder: (context, index) => SizedBox(width: 12.0),
          ),
        ),
      _ => Container(),
    };
  }
}

class CategoryListItem extends StatelessWidget {
  final String item;

  const CategoryListItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final text = item.replaceAllMapped(RegExp(r'\b\w'), (Match match) {
      return match.group(0)!.toUpperCase();
    }).replaceAll(RegExp(r'-'), ' ');

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 64.0,
          height: 64.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/images/$item.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 8.0),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 64.0),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 10.0,
              height: 1.0,
            ),
          ),
        ),
      ],
    );
  }
}
