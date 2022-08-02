import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import 'widgets.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  static const Color gradientStartColor = Color(0xff11998e);
  static const Color gradientEndColor = Color(0xff0575E6);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        gradient: const LinearGradient(
          colors: [gradientStartColor, gradientEndColor],
          begin: FractionalOffset(0.2, 0.2),
          end: FractionalOffset(1.0, 1.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: MediaQuery.of(context).size.width < 800
          ? Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    BottomBarColumn(
                      heading: 'ABOUT',
                      s1: 'Contact Us',
                      s1Link: '',
                      s2: 'About Us',
                      s2Link: '',
                      s3: 'Careers',
                      s3Link: '',
                    ),
                    BottomBarColumn(
                      heading: 'HELP',
                      s1: 'Payment',
                      s1Link: '',
                      s2: 'Cancellation',
                      s2Link: '',
                      s3: 'FAQ',
                      s3Link: '',
                    ),
                    BottomBarColumn(
                      heading: 'SOCIAL',
                      s1: 'Twitter',
                      s1Link: 'https://twitter.com/alamin_karno',
                      s2: 'Facebook',
                      s2Link: 'https://www.facebook.com/alamin.karnoOfficial',
                      s3: 'YouTube',
                      s3Link: 'https://youtube.com/alaminkarno',
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.white60,
                ),
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    InfoText(
                      type: 'Email',
                      text: 'alamin.karno@outlook.com',
                      isEmail: true,
                    ),
                    SizedBox(height: 10),
                    InfoText(
                      type: 'Address',
                      text:
                          'North Khailkur, Board Bazar, National University - 1704, Gazipur, Bangladesh',
                      isAddress: true,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Divider(
                  color: Colors.white60,
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () async {
                    var addressUrl = 'https://github.com/alamin-karno';
                    try {
                      await launchUrl(Uri.parse(addressUrl));
                    } catch (e) {
                      await Clipboard.setData(ClipboardData(text: addressUrl));
                      debugPrint('Address Copied');
                    }
                  },
                  child: Text(
                    'Copyright © 2022 | Alamin Karno',
                    style: TextStyle(
                      color: Colors.blueGrey[100],
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            )
          : Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const BottomBarColumn(
                      heading: 'ABOUT',
                      s1: 'Contact Us',
                      s1Link: '',
                      s2: 'About Us',
                      s2Link: '',
                      s3: 'Careers',
                      s3Link: '',
                    ),
                    const BottomBarColumn(
                      heading: 'HELP',
                      s1: 'Payment',
                      s1Link: '',
                      s2: 'Cancellation',
                      s2Link: '',
                      s3: 'FAQ',
                      s3Link: '',
                    ),
                    const BottomBarColumn(
                      heading: 'SOCIAL',
                      s1: 'Twitter',
                      s1Link: 'https://twitter.com/alamin_karno',
                      s2: 'Facebook',
                      s2Link: 'https://www.facebook.com/alamin.karnoOfficial',
                      s3: 'YouTube',
                      s3Link: 'https://youtube.com/alaminkarno',
                    ),
                    Container(
                      color: Colors.white60,
                      width: 2,
                      height: 150,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        InfoText(
                          type: 'Email',
                          text: 'alamin.karno@outlook.com',
                          isEmail: true,
                        ),
                        SizedBox(height: 10),
                        InfoText(
                          type: 'Address',
                          text:
                              'North Khailkur, National University - 1704, Gazipur, Bangladesh',
                          isAddress: true,
                        ),
                      ],
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.white60,
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () async {
                    var addressUrl = 'https://github.com/alamin-karno';
                    try {
                      await launchUrl(Uri.parse(addressUrl));
                    } catch (e) {
                      await Clipboard.setData(ClipboardData(text: addressUrl));
                      debugPrint('Address Copied');
                    }
                  },
                  child: Text(
                    'Copyright © 2022 | Alamin Karno',
                    style: TextStyle(
                      color: Colors.blueGrey[100],
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
