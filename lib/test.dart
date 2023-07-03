import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
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
    body: Container(
   child: Text('Test',
   textAlign:TextAlign.center),
        // textWidthBasis:TextWidthBasis.parent)
      ),
    ),
    );
  }
}