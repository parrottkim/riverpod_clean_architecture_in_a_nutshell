import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeArticleWidget extends StatelessWidget {
  const HomeArticleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Intl.message('home_article_title'),
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 16.0),
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
                const SizedBox(height: 8.0),
                Text(
                  Intl.message('home_article_body'),
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
