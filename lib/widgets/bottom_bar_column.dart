import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomBarColumn extends StatelessWidget {
  final String heading, s1, s1Link, s2, s2Link, s3, s3Link;

  const BottomBarColumn({
    Key? key,
    required this.heading,
    required this.s1,
    required this.s1Link,
    required this.s2,
    required this.s2Link,
    required this.s3,
    required this.s3Link,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: TextStyle(
              fontSize: 18,
              color: Colors.blueGrey[100],
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () async {
              if (s1Link.isNotEmpty) {
                try {
                  await launchUrl(Uri.parse(s1Link));
                } catch (e) {
                  await Clipboard.setData(ClipboardData(text: s1Link));
                }
              } else {
                debugPrint('LINK: $s1Link');
              }
            },
            child: Text(
              s1,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white60,
              ),
            ),
          ),
          const SizedBox(height: 10),
          InkWell(
            onTap: () async {
              if (s2Link.isNotEmpty) {
                try {
                  await launchUrl(Uri.parse(s2Link));
                } catch (e) {
                  await Clipboard.setData(ClipboardData(text: s2Link));
                }
              } else {
                debugPrint('LINK: $s2Link');
              }
            },
            child: Text(
              s2,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white60,
              ),
            ),
          ),
          const SizedBox(height: 10),
          InkWell(
            onTap: () async {
              if (s3Link.isNotEmpty) {
                try {
                  await launchUrl(Uri.parse(s3Link));
                } catch (e) {
                  await Clipboard.setData(ClipboardData(text: s3Link));
                }
              } else {
                debugPrint('LINK: $s3Link');
              }
            },
            child: Text(
              s3,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white60,
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
