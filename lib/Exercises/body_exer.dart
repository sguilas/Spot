import 'package:flutter/material.dart';
import 'package:spot_app/home.dart';
import 'package:spot_app/items/buttons.dart';
import 'package:spot_app/items/sets.dart';
import 'package:google_fonts/google_fonts.dart';

class body_exercise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const menu_bar(),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          menu_button(
            name: "10 PISTOL SQUATS",
            dest: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => three_set()),
              );
            },
          ),
          menu_button(
            name: "20 BODYWEIGHT SQUATS",
            dest: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => three_set()),
              );
            },
          ),
          menu_button(
            name: "20 WALKING LUNGES",
            dest: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => three_set()),
              );
            },
          ),
          menu_button(
            name: "20 JUMP STEP-UPS",
            dest: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => three_set()),
              );
            },
          ),
          menu_button(
            name: "10 PULLUPS",
            dest: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => three_set()),
              );
            },
          ),
          menu_button(
            name: "10 DIPS",
            dest: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => three_set()),
              );
            },
          ),
          menu_button(
            name: "10 CHINUPS",
            dest: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => three_set()),
              );
            },
          ),
          menu_button(
            name: "10 PUSHUPS",
            dest: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => three_set()),
              );
            },
          ),
          menu_button(
            name: "1 MINUTE PLANK",
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
