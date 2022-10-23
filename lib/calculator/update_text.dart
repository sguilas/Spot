import 'package:flutter/material.dart';
import 'calculators.dart';
import 'package:google_fonts/google_fonts.dart';

class updatetext extends StatefulWidget {
  @override
  updatetextState createState() => updatetextState();
}

class updatetextState extends State {
  String val = total.toString();

  change_val() {
    setState(() {
      val = calc_total();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: <Widget>[
      Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Text('$val', style: const TextStyle(fontSize: 50))),
      Container(
          alignment: Alignment.bottomCenter,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
            ),
            onPressed: () => change_val(),
            child: Text(
              "CALCULATE TOTAL",
              style: GoogleFonts.raleway(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ))
    ])));
  }
}
