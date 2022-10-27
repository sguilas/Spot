import 'package:flutter/material.dart';
import 'package:spot_app/items/buttons.dart';
import 'package:spot_app/timer/minute.dart';

class times extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const menu_bar(),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            minute(),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Exit"),
            )
          ],
        ),
      ),
    );
  }
}
