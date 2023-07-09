import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {

  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: pageChildren(constraints.biggest.width/2),
        ),
      );
    }
    );
  }

  List<Widget> pageChildren(double width) {
    return <Widget>[
         Padding(
          padding: const EdgeInsets.all(25.0),
          child: Container(
            width: width,
            //constraints: const BoxConstraints(maxWidth: 1000),
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
                  padding: EdgeInsets.symmetric(vertical: 30.0),
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
                      padding:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                      child: Text(
                        "Our Packages",
                        style: TextStyle(color: Colors.red),
                      ),
                    )
                ),
              ],
            ),
          ),
        ),
      Expanded(
        flex: 2,
        child: Image.asset(
          "assets/images/Funny.png",
          width: width,
        ),
      ),
    ];
  }


}
