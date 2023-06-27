import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// With Flutter, you create user interfaces by combining "widgets"
// You'll learn all about them (and much more) throughout this course!
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Every custom widget must have a build() method
  // It tells Flutter, which widgets make up your custom widget
  // Again: You'll learn all about that throughout the course!
  @override
  Widget build(BuildContext context) {
    // Below, a bunch of built-in widgets are used (provided by Flutter)
    // They will be explained in the next sections
    // In this course, you will, of course, not just use them a lot but
    // also learn about many other widgets!
    return MaterialApp(
      title: 'Flutter First App',
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter '),
          backgroundColor:Colors.blue
        ),
        body: SafeArea(
          child:Row(
            children: <Widget>[
              Container(
                height: 120.0,
                width: 120.0,
                color: Colors.blue[50],
              ),
              Container(
                height: 120.0,
                width: 120.0,
                color: Colors.blue[50],
              )
            ]
          )

        )
      ),
    );
  }
}
