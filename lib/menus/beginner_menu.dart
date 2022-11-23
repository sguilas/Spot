import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spot_app/Exercises/begin_exer.dart';

class beginner_menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(226, 225, 226, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(15),
            alignment: Alignment.topCenter,
            child: Text(
              "BEGINNER CIRCUIT",
              style: GoogleFonts.raleway(fontSize: 30),
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
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => begin_exercise()),
              );
            },
            title: const Text(
              "BEGIN",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
            tileColor: Colors.black,
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            title: const Text(
              "RETURN",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
            tileColor: Colors.black,
          )
        ],
      ),
    );
  }
}
