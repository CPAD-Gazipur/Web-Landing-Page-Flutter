import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FeatureTiles extends StatefulWidget {
  final Size screenSize;
  FeatureTiles({Key? key, required this.screenSize}) : super(key: key);

  @override
  State<FeatureTiles> createState() => _FeatureTilesState();
}

class _FeatureTilesState extends State<FeatureTiles> {
  int _current = 0;

  final List<String> assets = [
    'assets/images/sci_fi.jpg',
    'assets/images/photography_web.jpeg',
    'assets/images/romance.jpeg',
  ];

  final List<String> title = ['Sci-fi', 'Photography', 'Romance'];

  List<Widget> generateImageTiles(screenSize) {
    return assets
        .map(
          (image) => Padding(
            padding: EdgeInsets.only(top: screenSize.height / 50),
            child: Row(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: screenSize.width / 2.4,
                      width: screenSize.width / 1.8,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: screenSize.height / 70,
                      ),
                      child: Text(
                        title[_current],
                        style: const TextStyle(
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: screenSize.width / 15),
              ],
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    var imageSliders = generateImageTiles(widget.screenSize);

    return widget.screenSize.width < 800
        ? CarouselSlider(
            items: imageSliders,
            options: CarouselOptions(
              //aspectRatio: 18 / 8,
              autoPlay: false,
              viewportFraction: 0.65,
              onPageChanged: (index, context) {
                setState(() {
                  _current = index;
                });
              },
            ),
          )
        : Padding(
            padding: EdgeInsets.only(
              top: widget.screenSize.height * 0.06,
              left: widget.screenSize.width / 15,
              right: widget.screenSize.width / 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...Iterable<int>.generate(assets.length).map(
                  (index) => Column(
                    children: [
                      SizedBox(
                        height: widget.screenSize.width / 6,
                        width: widget.screenSize.width / 3.8,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage(assets[index]),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(0, 10),
                                blurRadius: 20,
                                spreadRadius: 5,
                                color: Colors.grey.withOpacity(0.3),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: widget.screenSize.height / 70,
                        ),
                        child: Text(
                          title[index],
                          style: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                          ),
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
