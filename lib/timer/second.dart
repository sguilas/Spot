import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spot_app/items/buttons.dart';
import 'dart:async';

class second_timer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: second(),
    );
  }
}

class second extends StatefulWidget {
  second({Key? key}) : super(key: key);

  @override
  _secondState createState() => _secondState();
}

class _secondState extends State<second> {
  int counter = 30;
  Timer? timer;

  void starttimer() {
    counter = 30;
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
