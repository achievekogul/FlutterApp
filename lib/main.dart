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
        body: Column(
          children: <Widget>[
            Row(children: [
              Expanded(
                child: InkWell(
                  child: Container(
                      alignment: Alignment.topLeft,
                      //margin: const EdgeInsets.all(10.0),
                      margin: EdgeInsets.all(20),
                      width: 5.0,
                      height: 200.0,
                      color: Colors.amber[200],
                      child: const Center(
                        child: Text(
                          "First",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                  ),
                  onTap: () {
                    print("Tapped on container");
                  },
                ),
              ),
              Expanded(
                child: Container(
                    margin: EdgeInsets.all(20),
                    alignment: Alignment.topRight,
                    width: 5.0,
                    height: 200.0,
                    color: Colors.blue[200],
                    child: const Center(
                      child: Text(
                        "Second",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ]),
            Row(//ROW 3
                children: [
              Expanded(
                child: Container(
                    margin: EdgeInsets.all(20),
                    alignment: Alignment.bottomLeft,
                    width: 5.0,
                    height: 200.0,
                    color: Colors.blue[200],
                    child: const Center(
                      child: Text(
                        "Third",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
              Expanded(
                child: Container(
                    margin: EdgeInsets.all(20),
                    alignment: Alignment.bottomRight,
                    width: 5.0,
                    height: 200.0,
                    color: Colors.black26,
                    child: const Center(
                      child: Text(
                        "Fourth",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

class ElevatedButtonExample extends StatefulWidget {
  const ElevatedButtonExample({super.key});

  @override
  State<ElevatedButtonExample> createState() => _ElevatedButtonExampleState();
}

class _ElevatedButtonExampleState extends State<ElevatedButtonExample> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(height: 30),
          ElevatedButton(
            style: style,
            onPressed: () {},
            child: const Text('Enabled'),
          ),
        ],
      ),
    );
  }
}
