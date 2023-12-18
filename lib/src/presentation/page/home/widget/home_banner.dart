import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: AspectRatio(
        aspectRatio: 8 / 3,
        child: Image.network(
          'https://picsum.photos/800',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
