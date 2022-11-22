import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spot_app/custom/saved_page.dart';

String conv(List arr) {
  String end = "";

  for (int i = 0; i < arr.length; i++) {
    // ignore: prefer_interpolation_to_compose_strings
    end = end + arr[i] + ",";
  }
  return end;
}

class builder extends StatefulWidget {
  @override
  State<builder> createState() => _builderState();
}

class _builderState extends State<builder> {
  final workout = Set<String>();

  final DatabaseReference ref = FirebaseDatabase.instance.ref();

  @override
  Widget select(String ex) {
    final saved = workout.contains(ex);
    return ListTile(
      title: Text(ex),
      trailing: Icon(
        saved
            ? Icons.check_circle_outline_outlined
            : Icons.check_circle_outline_outlined,
        color: saved ? Colors.green : null,
      ),
      onTap: () {
        setState(() {
          if (saved) {
            workout.remove(ex);
          } else {
            workout.add(ex);
          }
        });
      },
    );
  }

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
          child: ListView(
        children: [
          Container(
              color: Colors.black,
              child: Text(
                "EXERCISE LIST",
                style: GoogleFonts.raleway(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
          Container(
              color: Colors.black,
              child: Text(
                "CHEST",
                style: GoogleFonts.raleway(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
          select("BENCH PRESS"),
          select("DUMBBELL BENCH PRESS"),
          select("CABLE CHEST FLYS"),
          select("PUSH UPS"),
          Container(
              color: Colors.black,
              child: Text(
                "ARMS",
                style: GoogleFonts.raleway(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
          select("BARBELL CURLS"),
          select("HAMMER CURLS"),
          select("SKULLCRUSHERS"),
          select("TRICEP EXTENSIONS"),
          Container(
              color: Colors.black,
              child: Text(
                "BACK",
                style: GoogleFonts.raleway(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
          select("LAT PULLDOWN"),
          select("SEATED CABLE ROW"),
          select("SINGLE ARM DUMBBELL ROW"),
          select("REVERSE FLYS"),
          Container(
              color: Colors.black,
              child: Text(
                "LEGS",
                style: GoogleFonts.raleway(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
          select("BARBELL SQUAT"),
          select("DEADLIFT"),
          select("LEG PRESS"),
          select("LEG EXTENSIONS"),
          select("HAMSTRING CURLS"),
          Container(
              color: Colors.black,
              child: Text(
                "CORE",
                style: GoogleFonts.raleway(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
          select("SIT UPS"),
          select("HANGING LEG RAISES"),
          select("2 MINUTE PLANK"),
          select("WEIGHTED HANGING LEG RAISES"),

// THIS IS WHERE YOULL SAVE THE SET TO FIREBASE

          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            onPressed: () async {
              List arr = workout.toList();
              String exer = conv(arr);
              DatabaseReference ref = FirebaseDatabase.instance.ref();
              await ref.set({
                "workout": exer,
              });
              // ignore: use_build_context_synchronously
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => saved()));
            },
            child: Text(
              "SAVE WORKOUT",
              style: GoogleFonts.raleway(fontSize: 50),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "RETURN",
              style: GoogleFonts.raleway(fontSize: 50),
            ),
          )
        ],
      )),
    ));
  }
}
