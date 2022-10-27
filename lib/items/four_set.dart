import 'package:flutter/material.dart';
import 'package:spot_app/items/buttons.dart';
import 'package:spot_app/timer/timer.dart';

class four_set extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const menu_bar(),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: const <Widget>[
                set_check(),
                set_check(),
                set_check(),
                set_check(),
              ],
            ),
            const SizedBox(height: 20),
            nav_button(
                name: "TIMERS",
                dest: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => times()),
                  );
                }),
            const SizedBox(height: 20),
            nav_button(
                name: "FINISH WORKOUT",
                dest: () {
                  Navigator.pop(context);
                })
          ],
        ),
      ),
    );
  }
}
