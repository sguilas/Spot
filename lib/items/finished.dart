import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spot_app/items/buttons.dart';
import 'package:spot_app/main.dart';

class finished extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WORKOUT COMPLETED",
              style: GoogleFonts.raleway(
                fontSize: 70,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            nav_button(
              name: "PRESS TO CONTINUE",
              dest: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => spot()));
              },
            )
          ],
        ),
      ),
    );
  }
}
