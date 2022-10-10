import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class labels extends StatelessWidget {
  const labels({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            "WEIGHT",
            style: GoogleFonts.oswald(
              fontSize: 70,
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            "45 LBS",
            style: GoogleFonts.openSans(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            "35 LBS",
            style: GoogleFonts.openSans(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            "25 LBS",
            style: GoogleFonts.openSans(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            "10 LBS",
            style: GoogleFonts.openSans(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            "5 LBS",
            style: GoogleFonts.openSans(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            "TOTAL",
            style: GoogleFonts.openSans(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ),
      ],
    );
  }
}
