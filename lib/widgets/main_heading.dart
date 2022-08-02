import 'package:flutter/material.dart';

class MainHeading extends StatelessWidget {
  final Size screenSize;
  const MainHeading({Key? key, required this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: screenSize.height / 20,
        bottom: screenSize.height / 15,
        left: screenSize.width / 15,
        right: screenSize.width / 15,
      ),
      width: screenSize.width,
      child: const Text(
        'Knowledge Diversity',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 40,
          fontFamily: 'Montserrat',
          color: Color(0xFF077BD7),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
