import 'package:flutter/material.dart';
import 'package:mobile_app/Navbar.dart';

import 'LandingPage.dart';

void main() {
  runApp(const WebApp());
}

class WebApp extends StatelessWidget {
  const WebApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                Color.fromRGBO(161, 43, 127, 1.0),
                Color.fromRGBO(41, 25, 58, 1.0)
              ])),
          child: Column(children: <Widget>[
            NavBar(),
            const Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0)
            ),
             const LandingPage()
          ]
          )
      ),
    )
    );
  }
}
