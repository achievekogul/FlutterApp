import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());

}

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

              SizedBox(

                width: 250,
                height: 250,

                child: OutlinedButton(
                  style: ButtonStyle(
                      backgroundColor:MaterialStatePropertyAll<Color>(Colors.green)
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SecondRoute()),
                    );
                  },
                  child: const Text("English"),

                ),

              ),
              SizedBox(
                width: 250,
                height: 250,
                child: OutlinedButton(
                  style: ButtonStyle(
                      backgroundColor:MaterialStatePropertyAll<Color>(Colors.red)
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SecondRoute()),
                    );
                  },
                  child: const Text("English"),

                ),

              ),
            ]
            ),
            Row(//ROW 3
                children: [
                  SizedBox(
                    width: 250,
                    height: 250,
                    child: OutlinedButton(
                      style: ButtonStyle(
                          backgroundColor:MaterialStatePropertyAll<Color>(Colors.teal)
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SecondRoute()),
                        );
                      },
                      child: const Text("English"),

                    ),

                  ),
                  SizedBox(
                    width: 250,
                    height: 250,
                    child: OutlinedButton(
                      style: ButtonStyle(
                          backgroundColor:MaterialStatePropertyAll<Color>(Colors.lightBlueAccent)
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SecondRoute()),
                        );
                      },
                      child: const Text("English"),

                    ),

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

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
