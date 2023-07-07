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
    body: InkWell(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal:40),
        child: Container(
        width: 500.0,
        padding: new EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
        color: Colors.green,
        child: new Column(
            children: [
              new Text("Ableitungen"),
            ]
        ),
      ),
      ),
      onTap: () {
        print("Tapped on container");
      },
    ),
    ),
    );
  }
}