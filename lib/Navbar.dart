import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return const DesktopNavbar();
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 1500),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text(
              'My profile',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30),
            ),
            Row(
              children: <Widget>[
                const Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Text(
                  "About Us",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Text(
                  "Portfolio",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  color: Colors.brown,
                  onPressed: () {},
                  child: const Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}