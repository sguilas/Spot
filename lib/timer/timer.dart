import 'package:flutter/material.dart';
import 'package:spot_app/items/buttons.dart';
import 'package:spot_app/timer/minute.dart';
import 'package:spot_app/timer/second.dart';
import 'package:spot_app/timer/three.dart';
import 'package:spot_app/timer/five.dart';

class times extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                margin: const EdgeInsets.all(15),
                child: nav_button(
                    name: "30 SECONDS",
                    dest: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => second_timer()),
                      );
                    })),
            Container(
                margin: const EdgeInsets.all(15),
                child: nav_button(
                    name: "ONE MINUTE",
                    dest: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => minute_timer()),
                      );
                    })),
            Container(
                margin: const EdgeInsets.all(15),
                child: nav_button(
                    name: "THREE MINUTES",
                    dest: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => three_timer()),
                      );
                    })),
            Container(
                margin: const EdgeInsets.all(15),
                child: nav_button(
                    name: "FIVE MINUTES",
                    dest: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => five_timer()),
                      );
                    })),
            Container(
                margin: const EdgeInsets.all(15),
                child: nav_button(
                  name: "EXIT",
                  dest: () {
                    Navigator.pop(context);
                  },
                )),
          ],
        ),
      ),
    );
  }
}
