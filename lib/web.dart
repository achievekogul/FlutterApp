import 'package:flutter/material.dart';

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
                    gradient: LinearGradient(colors: [
                  Color.fromRGBO(177, 33, 57, 1),
                  Color.fromRGBO(20, 10, 27, 1)
                ])),
                child:  Column(
                  children: [
                    Text(
                      'Home Page',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ))));
  }
}
