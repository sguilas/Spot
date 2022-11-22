import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spot_app/items/buttons.dart';
import 'package:spot_app/menus/custom.dart';

class saved extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WORKOUT SAVED",
              style: GoogleFonts.raleway(
                fontSize: 75,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            nav_button(
              name: "PRESS TO CONTINUE",
              dest: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => custom_menu()));
              },
            )
          ],
        ),
      ),
    );
  }
}
