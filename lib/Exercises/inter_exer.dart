import 'package:flutter/material.dart';
import 'package:spot_app/home.dart';
import 'package:spot_app/items/buttons.dart';
import 'package:spot_app/items/sets.dart';
import 'package:google_fonts/google_fonts.dart';

class inter_exercise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const menu_bar(),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          menu_button(
            name: "BARBELL SQUATS",
            dest: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => three_set()),
              );
            },
          ),
          menu_button(
            name: "BENCH PRESS",
            dest: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => three_set()),
              );
            },
          ),
          menu_button(
            name: "SEATED CABLE ROW",
            dest: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => three_set()),
              );
            },
          ),
          menu_button(
            name: "DUMBBELL SHOULDER PRESS",
            dest: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => three_set()),
              );
            },
          ),
          menu_button(
            name: "LAT PULLDOWNS",
            dest: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => three_set()),
              );
            },
          ),
          menu_button(
            name: "LEG CURLS",
            dest: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => three_set()),
              );
            },
          ),
          menu_button(
            name: "TRICEP PUSHDOWN",
            dest: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => three_set()),
              );
            },
          ),
          menu_button(
            name: "BICEP CURLS",
            dest: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => three_set()),
              );
            },
          ),
          menu_button(
            name: "HANGING LEG RAISES",
            dest: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => three_set()),
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
