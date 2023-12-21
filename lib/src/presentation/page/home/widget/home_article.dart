import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeArticle extends StatelessWidget {
  const HomeArticle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Best Article',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 8.0),
          InkWell(
            onTap: () => launchUrl(Uri.parse(
                'https://www.zdnet.com/article/zdnet-editors-favorite-tech-products-of-2023/')),
            child: Column(
              children: [
                Ink.image(
                  height: 210.0,
                  image: const AssetImage('assets/images/article.png'),
                  fit: BoxFit.cover,
                ),
                Ink(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  color: Theme.of(context).colorScheme.tertiaryContainer,
                  width: double.infinity,
                  child: Text(
                    'ZDNET editors\' favorite tech products of 2023',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
