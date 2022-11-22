import 'package:flutter/material.dart';
import 'package:spot_app/home.dart';
import 'package:spot_app/items/buttons.dart';
import 'package:spot_app/items/sets.dart';
import 'package:google_fonts/google_fonts.dart';

class inter_exercise extends StatefulWidget {
  @override
  State<inter_exercise> createState() => _inter_exerciseState();
}

class _inter_exerciseState extends State<inter_exercise> {
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
          MaterialPageRoute(builder: (context) => three_set()),
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
          row_build("BARBELL SQUATS"),
          row_build(
            "BENCH PRESS",
          ),
          row_build(
            "SEATED CABLE ROW",
          ),
          row_build(
            "DUMBBELL SHOULDER PRESS",
          ),
          row_build(
            "LAT PULLDOWN",
          ),
          row_build(
            "LEG CURLS",
          ),
          row_build(
            "TRICEP PUSHDOWN",
          ),
          row_build(
            "BICEP CURLS",
          ),
          row_build(
            "HANGING LEG RAISES",
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
