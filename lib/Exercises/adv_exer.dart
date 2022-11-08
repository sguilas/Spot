import 'package:flutter/material.dart';
import 'package:spot_app/home.dart';
import 'package:spot_app/items/buttons.dart';
import 'package:spot_app/items/sets.dart';
import 'package:google_fonts/google_fonts.dart';

class adv_exercise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const menu_bar(),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          menu_button(
            name: "DEADLIFT",
            dest: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => three_set()),
              );
            },
          ),
          menu_button(
            name: "INCLINE BENCH PRESS",
            dest: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => three_set()),
              );
            },
          ),
          menu_button(
            name: "LAT PULLDOWN WITH PRONATED GRIP",
            dest: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => three_set()),
              );
            },
          ),
          menu_button(
            name: "LEG PRESS",
            dest: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => three_set()),
              );
            },
          ),
          menu_button(
            name: "LYING LEG CURL",
            dest: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => two_set()),
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
            name: "SKULLCRUSHERS",
            dest: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => two_set()),
              );
            },
          ),
          menu_button(
            name: "HAMMER CURL",
            dest: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => two_set()),
              );
            },
          ),
          menu_button(
            name: "CABLE CRUNCH",
            dest: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => two_set()),
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
