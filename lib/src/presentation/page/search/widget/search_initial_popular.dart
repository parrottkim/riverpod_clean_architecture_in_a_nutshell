import 'package:flutter/material.dart';

class SearchInitialPopular extends StatelessWidget {
  const SearchInitialPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        'Popular Keywords',
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
