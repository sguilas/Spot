import 'package:flutter/material.dart';
import 'package:spot_app/home.dart';
import 'package:spot_app/items/buttons.dart';
import 'package:spot_app/items/four_set.dart';
import 'package:google_fonts/google_fonts.dart';

class begin_exercise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const menu_bar(),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          menu_button(
            name: "BARBELL PUSH PRESS",
            dest: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => four_set()),
              );
            },
          ),
          menu_button(
            name: "GOBLET SQUAT",
            dest: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => four_set()),
              );
            },
          ),
          menu_button(
            name: "DUMBBEL SINGLE ARM ROW",
            dest: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => four_set()),
              );
            },
          ),
          menu_button(
            name: "SHOULDER LATERAL RAISE",
            dest: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => four_set()),
              );
            },
          ),
          menu_button(
            name: "BENCH PRESS",
            dest: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => four_set()),
              );
            },
          ),
          menu_button(
            name: "PULL UPS",
            dest: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => four_set()),
              );
            },
          ),
          menu_button(
            name: "BARBELL BICEP CURL",
            dest: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => four_set()),
              );
            },
          ),
          menu_button(
            name: "CABLE OVERHEAD TRICEP EXTENSION",
            dest: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => four_set()),
              );
            },
          ),
          menu_button(
            name: "ROTATING PLANK (30 SECS)",
            dest: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => four_set()),
              );
            },
          ),
          SizedBox(
              height: 100,
              child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Homepage()),
                    );
                  },
                  child: Text(
                    "FINISH",
                    style: GoogleFonts.raleway(fontSize: 40),
                  ))),
        ],
      ),
    );
  }
}
