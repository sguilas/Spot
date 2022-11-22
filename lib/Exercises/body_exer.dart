import 'package:flutter/material.dart';
import 'package:spot_app/home.dart';
import 'package:spot_app/items/buttons.dart';
import 'package:spot_app/items/sets.dart';
import 'package:google_fonts/google_fonts.dart';

class body_exercise extends StatefulWidget {
  @override
  State<body_exercise> createState() => _body_exerciseState();
}

class _body_exerciseState extends State<body_exercise> {
  final completed = Set<String>();
  @override
  Widget row_build(String ex) {
    final saved = completed.contains(ex);
    return ListTile(
      trailing: Icon(
          saved
              ? Icons.check_circle_outline_outlined
              : Icons.check_circle_outline_outlined,
          color: saved ? Colors.green : Colors.red),
      title: Text(
        ex,
      ),
      onTap: () {
        setState(() {
          if (saved) {
            completed.remove(ex);
          } else {
            completed.add(ex);
          }
        });
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => four_set()),
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color.fromRGBO(1, 1, 1, 255),
        elevation: 0,
      ),
      drawer: nav_drawer(context),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          row_build("10 PISTOL SQUATS"),
          row_build(
            "20 BODYWEIGHT SQUATS",
          ),
          row_build(
            "20 WALKING LUNGES",
          ),
          row_build(
            "20 JUMP STEP-UPS",
          ),
          row_build(
            "10 PULLUPS",
          ),
          row_build(
            "10 DIPS",
          ),
          row_build(
            "10 CHIN UPS",
          ),
          row_build(
            "30 PUSH UPS",
          ),
          row_build(
            "60 SECOND PLANK",
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Homepage2()),
              );
            },
            title: const Text(
              "FINISH",
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
