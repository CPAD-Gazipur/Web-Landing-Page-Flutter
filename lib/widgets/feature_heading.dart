import 'package:flutter/material.dart';

class FeatureHeading extends StatelessWidget {
  final Size screenSize;
  const FeatureHeading({Key? key, required this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: screenSize.height * 0.06,
        left: screenSize.width / 15,
        right: screenSize.width / 15,
      ),
      child: screenSize.width < 800
          ? Column(
              children: const [
                Text(
                  'Featured',
                  style: TextStyle(
                    fontSize: 36,
                    color: Color(0xFF077BD7),
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Clue of the wooden cottage',
                  textAlign: TextAlign.end,
                ),
              ],
            )
          : Row(
              children: const [
                Text(
                  'Featured',
                  style: TextStyle(
                    fontSize: 36,
                    color: Color(0xFF077BD7),
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: Text(
                    'Clue of the wooden cottage',
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
    );
  }
}
