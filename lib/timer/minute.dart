import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spot_app/items/buttons.dart';
import 'dart:async';

class minute_timer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: minute(),
    );
  }
}

class minute extends StatefulWidget {
  minute({Key? key}) : super(key: key);

  @override
  _minuteState createState() => _minuteState();
}

class _minuteState extends State<minute> {
  int counter = 60;
  Timer? timer;

  void starttimer() {
    counter = 60;
    if (timer != null) {
      timer!.cancel();
    }

    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (counter > 0) {
          counter--;
        } else {
          timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          (counter > 0)
              ? const Text("")
              : Text("FINISHED",
                  style: GoogleFonts.raleway(color: Colors.black)),
          Text(
            "$counter",
            style:
                GoogleFonts.openSans(fontSize: 60, fontWeight: FontWeight.bold),
          ),
          nav_button(
            name: 'START TIMER',
            dest: () {
              starttimer();
            },
          ),
          const SizedBox(height: 25),
          nav_button(
            name: "BACK",
            dest: () {
              if (timer != null) {
                timer!.cancel();
              }
              Navigator.pop(context);
            },
          )
        ],
      )),
    );
  }
}
