import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeBannerWidget extends StatelessWidget {
  const HomeBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 2,
      child: Ink.image(
        image: const AssetImage('assets/images/banner.jpg'),
        fit: BoxFit.cover,
        child: InkWell(
          onTap: () => launchUrl(Uri.parse(
              'https://www.apple.com/kr/iphone-15/?afid=p238%7Cs7Mg2hx0e-dc_mtid_209254jz40384_pcrid_673793476957_pgrid_157020241641_pexid__&cid=wwa-kr-kwgo-iphone-Brand-iPhone15-Announce-')),
        ),
      ),
    );
  }
}
