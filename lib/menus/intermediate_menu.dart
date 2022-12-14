import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spot_app/Exercises/inter_exer.dart';

class intermediate_menu extends StatelessWidget {
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
              "INTERMEDIATE CIRCUIT",
              style: GoogleFonts.raleway(fontSize: 30),
            ),
          ),
          Image.asset(
            "assets/spot_app_photos/intermediate_stock.jpeg",
            height: 270,
            width: 500,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            alignment: Alignment.topCenter,
            child: Text(
              "You want something a bit more challenging than the last circuit. 8-10 reps per set for this one.",
              style: GoogleFonts.raleway(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => inter_exercise()),
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
