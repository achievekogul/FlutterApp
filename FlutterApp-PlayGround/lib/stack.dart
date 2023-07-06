import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF0099a9),
        ),
        body: Column(children: <Widget>[
          Row(
            //ROW 1
            children: [
              Container(
                color: Colors.orange,
                margin: const EdgeInsets.all(25.0),
                child: const FlutterLogo(
                  size: 60.0,
                ),
              ),
              Container(
                color: Colors.blue,
                margin: const EdgeInsets.all(25.0),
                child: const FlutterLogo(
                  size: 60.0,
                ),
              ),
              Container(
                color: Colors.purple,
                margin: const EdgeInsets.all(25.0),
                child: const FlutterLogo(
                  size: 60.0,
                ),
              ),
            ],
          ),
          Row(//ROW 2
              children: [
            Container(
              color: Colors.orange,
              margin: const EdgeInsets.all(25.0),
              child: const FlutterLogo(
                size: 60.0,
              ),
            ),
            Container(
              color: Colors.blue,
              margin: const EdgeInsets.all(25.0),
              child: const FlutterLogo(
                size: 60.0,
              ),
            ),
            Container(
              color: Colors.purple,
              margin: const EdgeInsets.all(25.0),
              child: const FlutterLogo(
                size: 60.0,
              ),
            )
          ]),
          Row(// ROW 3
              children: [
            Container(
              color: Colors.orange,
              margin: const EdgeInsets.all(25.0),
              child: const FlutterLogo(
                size: 60.0,
              ),
            ),
            Container(
              color: Colors.blue,
              margin: const EdgeInsets.all(25.0),
              child: const FlutterLogo(
                size: 60.0,
              ),
            ),
            Container(
              color: Colors.purple,
              margin: const EdgeInsets.all(25.0),
              child: const FlutterLogo(
                size: 60.0,
              ),
            ),
          ]),
        ]));
  }
}
