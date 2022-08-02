import 'package:flutter/material.dart';

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
                  children: [
                    const BottomBarColumn(
                      heading: 'ABOUT',
                      s1: 'Contact Us',
                      s2: 'About Us',
                      s3: 'Careers',
                    ),
                    const BottomBarColumn(
                      heading: 'HELP',
                      s1: 'Payment',
                      s2: 'Cancellation',
                      s3: 'FAQ',
                    ),
                    const BottomBarColumn(
                      heading: 'SOCIAL',
                      s1: 'Twitter',
                      s2: 'Facebook',
                      s3: 'YouTube',
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
                Text(
                  'Copyright © 2022 | Alamin Karno',
                  style: TextStyle(
                    color: Colors.blueGrey[100],
                    fontSize: 14,
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
                      s2: 'About Us',
                      s3: 'Careers',
                    ),
                    const BottomBarColumn(
                      heading: 'HELP',
                      s1: 'Payment',
                      s2: 'Cancellation',
                      s3: 'FAQ',
                    ),
                    const BottomBarColumn(
                      heading: 'SOCIAL',
                      s1: 'Twitter',
                      s2: 'Facebook',
                      s3: 'YouTube',
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
                Text(
                  'Copyright © 2022 | Alamin Karno',
                  style: TextStyle(
                    color: Colors.blueGrey[100],
                    fontSize: 14,
                  ),
                ),
              ],
            ),
    );
  }
}