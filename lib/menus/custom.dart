import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spot_app/custom/load.dart';
import 'package:spot_app/custom/builder.dart';

List<String> conv(String workout) {
  List<String> arr = workout.split(",");
  List<String> fin = [];
  for (int i = 0; i < arr.length - 1; i++) {
    fin.add(arr[i]);
  }
  fin.add("FINISH");
  return fin;
}

class custom_menu extends StatelessWidget {
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
              "BUILD YOUR OWN CIRCUIT",
              style: GoogleFonts.raleway(fontSize: 30),
            ),
          ),
          Image.asset(
            "assets/spot_app_photos/logo2.png",
            height: 270,
            width: 500,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            alignment: Alignment.topCenter,
            child: Text(
              "You're the type of person that goes their own way. No rules fo you right? You know what? Have at it. Build your own thing!",
              style: GoogleFonts.raleway(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => builder()));
            },
            title: const Text(
              "BUILD",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
            tileColor: Colors.black,
          ),
          ListTile(
            onTap: () async {
              DatabaseReference ref = FirebaseDatabase.instance.ref();
              final snapshot = await ref.child('workout').get();
              String workout = snapshot.value as String;
              List<String> arr = conv(workout);
              // ignore: use_build_context_synchronously
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => load_workout(workout: arr)),
              );
            },
            title: const Text(
              "LOAD SAVED WORKOUT",
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
