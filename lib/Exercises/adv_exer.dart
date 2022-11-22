import 'package:flutter/material.dart';
import 'package:spot_app/home.dart';
import 'package:spot_app/items/buttons.dart';
import 'package:spot_app/items/sets.dart';
import 'package:google_fonts/google_fonts.dart';

class adv_exercise extends StatefulWidget {
  @override
  State<adv_exercise> createState() => _adv_exerciseState();
}

class _adv_exerciseState extends State<adv_exercise> {
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
          row_build("DEADLIFT"),
          row_build(
            "INCLINE BENCH PRESS",
          ),
          row_build(
            "LAT PULLDOWN WITH PRONATED GRIP",
          ),
          row_build(
            "LEG PRESS",
          ),
          row_build(
            "DUMBBEL SHOULDER PRESS",
          ),
          row_build(
            "SKULLCRUSHERS",
          ),
          row_build(
            "HAMMER CURLS",
          ),
          row_build(
            "CABLE CRUNCH",
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
