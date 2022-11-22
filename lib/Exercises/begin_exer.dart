import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spot_app/home.dart';
import 'package:spot_app/items/buttons.dart';
import 'package:spot_app/items/finished.dart';
import 'package:spot_app/items/sets.dart';

class begin_exercise extends StatefulWidget {
  @override
  State<begin_exercise> createState() => _begin_exerciseState();
}

class _begin_exerciseState extends State<begin_exercise> {
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
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color.fromRGBO(1, 1, 1, 255),
        elevation: 0,
      ),
      drawer: nav_drawer(context),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          row_build("BARBELL PUSH PRESS"),
          row_build(
            "GOBLET SQUAT",
          ),
          row_build(
            "DUMBBEL SINGLE ARM ROW",
          ),
          row_build(
            "SHOULDER LATERAL RAISE",
          ),
          row_build(
            "BENCH PRESS",
          ),
          row_build(
            "PULL UPS",
          ),
          row_build(
            "BARBELL BICEP CURL",
          ),
          row_build(
            "CABLE OVERHEAD TRICEP EXTENSION",
          ),
          row_build(
            "30 SEC ROTATING PLANK",
          ),
          ListTile(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => finished()),
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
