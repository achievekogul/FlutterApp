

import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

  return LayoutBuilder(
  builder: (context, constraints) {
    return DesktopNavbar();
  },
  );
  }
  }

class DesktopNavbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return Container(
  child:Row(
    children: const <Widget>[
      Text('Testing tutorial',
        textAlign: TextAlign.left,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color:Colors.white,
        fontSize: 30
      ),
      ),
    ],

  )

);

  }
}