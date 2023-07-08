import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pageChildren() {
    return <Widget>[
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "Website  \nDevelopers",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.white),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "We have taken each and every project handed over to us a challenge, which has helped us achieve clients",
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            ),
            MaterialButton(
                color: Colors.white,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 40.0),
                  child: Text(
                    "Our Packages",
                    style: TextStyle(color: Colors.red),
                  ),
                )
            ),

          ],
        ),
      ),


    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: pageChildren(),
      );
    });
  }
}
