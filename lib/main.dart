import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
    return MaterialApp(
        title: 'Flutter First App',
        theme: ThemeData(useMaterial3: true),
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Flutter layout demo'),
              backgroundColor: Colors.blue,
            ),
            body: Column(children: <Widget>[
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.amber[200],
                  child: const Text(
                    "First Container",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.blue[200],
                  child: const Text(
                    "Second Container",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.purple[200],
                  child: const Text(
                    "Third Container",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.black26,
                      child: const Text(
                        "Fourth Container",
                        style: TextStyle(fontSize: 25),
                      )))
            ]
            )
        )
    );
  }
}
