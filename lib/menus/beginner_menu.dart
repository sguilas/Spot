import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spot_app/menus/menu_bar.dart';
import 'package:spot_app/home.dart';

class beginner_menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const menu_bar(),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(15),
            alignment: Alignment.topCenter,
            child: Text(
              "BEGINNER CIRCUIT",
              style: GoogleFonts.raleway(
                  fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Image.asset(
            "assets/spot_app_photos/beginner_stock.jpeg",
            height: 270,
            width: 500,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            alignment: Alignment.topCenter,
            child: Text(
              "Something to get started with if you don't know what you're doing yet. Aim for 6 reps per set.",
              style: GoogleFonts.raleway(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Homepage()),
              );
            },
            child: Text(
              "BEGIN",
              style: GoogleFonts.raleway(fontSize: 20),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "RETURN",
              style: GoogleFonts.raleway(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
