import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    title: 'Navigation Basics',
    home: Index(),
  ));
}

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:  AppBar(
          backgroundColor: const Color(0xFF0099a9),
        ),
        body: Column(children: <Widget>[

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
        ]
    )
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