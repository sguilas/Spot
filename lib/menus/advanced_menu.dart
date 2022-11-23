import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spot_app/Exercises/adv_exer.dart';

class advanced_menu extends StatelessWidget {
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
              "ADVANCED CIRCUIT",
              style: GoogleFonts.raleway(fontSize: 30),
            ),
          ),
          Image.asset(
            "assets/spot_app_photos/advanced_stock.jpeg",
            height: 270,
            width: 500,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            alignment: Alignment.topCenter,
            child: Text(
              "You don't need somebody else to tell you what to do. 10-15.",
              style: GoogleFonts.raleway(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => adv_exercise()),
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
