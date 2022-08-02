import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white, //const Color(0xFF077BD7),
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.blue,
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Author',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w900,
                    letterSpacing: 3,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Home',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF077BD7),
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w900,
                          letterSpacing: 3,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: Divider(
                        color: Colors.blueGrey.shade200,
                        thickness: 2,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'About',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF077BD7),
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w900,
                          letterSpacing: 3,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: Divider(
                        color: Colors.blueGrey.shade200,
                        thickness: 2,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'History',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF077BD7),
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w900,
                          letterSpacing: 3,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5),
                      child: Divider(
                        color: Colors.blueGrey.shade200,
                        thickness: 2,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'Contact',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF077BD7),
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w900,
                          letterSpacing: 3,
                        ),
                      ),
                    ),
                    const Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Copyright © 2022 | Alamin Karno',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
