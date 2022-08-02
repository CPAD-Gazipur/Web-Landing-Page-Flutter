import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoText extends StatelessWidget {
  final String type, text;
  final bool? isEmail, isAddress;
  const InfoText({
    Key? key,
    required this.type,
    required this.text,
    this.isEmail,
    this.isAddress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$type : ',
          style: TextStyle(
            fontSize: 16,
            color: Colors.blueGrey[100],
          ),
        ),
        Flexible(
          child: InkWell(
            onTap: () async {
              if (isEmail == true) {
                var mailUrl =
                    'mailto:$text?subject=Your Subject&body=Your Body Text';
                try {
                  await launchUrl(Uri.parse(mailUrl));
                } catch (e) {
                  await Clipboard.setData(ClipboardData(text: text));
                }
              } else if (isAddress == true) {
                var addressUrl = 'https://goo.gl/maps/qKvpEu9Ld4Syx4RR7';
                try {
                  await launchUrl(Uri.parse(addressUrl));
                } catch (e) {
                  await Clipboard.setData(ClipboardData(text: addressUrl));
                  debugPrint('Address Copied');
                }
              }
            },
            child: Text(
              text,
              textAlign: TextAlign.justify,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white60,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
