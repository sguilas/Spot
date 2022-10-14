import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spot_app/calculator/calculators.dart';

class labels extends StatelessWidget {
  const labels({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          alignment: Alignment.topLeft,
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
          alignment: Alignment.topLeft,
          child: Text(
            "45 LBS",
            style: GoogleFonts.openSans(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          alignment: Alignment.topLeft,
          child: Text(
            "35 LBS",
            style: GoogleFonts.openSans(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          alignment: Alignment.topLeft,
          child: Text(
            "25 LBS",
            style: GoogleFonts.openSans(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          alignment: Alignment.topLeft,
          child: Text(
            "10 LBS",
            style: GoogleFonts.openSans(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          alignment: Alignment.topLeft,
          child: Text(
            "5 LBS",
            style: GoogleFonts.openSans(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ),
      ],
    );
  }
}

class labels_right extends StatelessWidget {
  const labels_right({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // right side
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
        ),
        Container(
          // 45 lbs
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          alignment: Alignment.topRight,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: SizedBox(
            width: 200,
            child: TextField(
              controller: TextEditingController(
                  text: ((last_45 ~/ 45).toInt()).toString()),
              onChanged: (value) {
                if (value.isEmpty) {
                  int val = 0;
                  calc_45(val);
                } else {
                  int val = int.parse(value);
                  calc_45(val);
                }
              },
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                fillColor: Colors.white,
                border: InputBorder.none,
                hintText: "PLATE AMOUNT",
              ),
            ),
          ),
        ),
        Container(
          // 35
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          alignment: Alignment.topRight,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: SizedBox(
            width: 200,
            child: TextField(
              controller: TextEditingController(
                  text: ((last_35 ~/ 35).toInt()).toString()),
              onChanged: (value) {
                if (value.isEmpty) {
                  int val = 0;
                  calc_35(val);
                } else {
                  int val = int.parse(value);
                  calc_35(val);
                }
              },
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                fillColor: Colors.white,
                border: InputBorder.none,
                hintText: "PLATE AMOUNT",
              ),
            ),
          ),
        ),
        Container(
          //25 lbs
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          alignment: Alignment.topRight,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: SizedBox(
            width: 200,
            child: TextField(
              controller: TextEditingController(
                  text: ((last_25 ~/ 25).toInt()).toString()),
              onChanged: (value) {
                if (value.isEmpty) {
                  int val = 0;
                  calc_25(val);
                } else {
                  int val = int.parse(value);
                  calc_25(val);
                }
              },
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                fillColor: Colors.white,
                border: InputBorder.none,
                hintText: "PLATE AMOUNT",
              ),
            ),
          ),
        ),
        Container(
          //10lbs
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          alignment: Alignment.topRight,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: SizedBox(
            width: 200,
            child: TextField(
              controller: TextEditingController(
                  text: ((last_10 ~/ 10).toInt()).toString()),
              onChanged: (value) {
                if (value.isEmpty) {
                  int val = 0;
                  calc_10(val);
                } else {
                  int val = int.parse(value);
                  calc_10(val);
                }
              },
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                fillColor: Colors.white,
                border: InputBorder.none,
                hintText: "PLATE AMOUNT",
              ),
            ),
          ),
        ),
        Container(
          // 5 lbs
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          alignment: Alignment.topRight,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: SizedBox(
            width: 200,
            child: TextField(
              controller: TextEditingController(
                  text: ((last_5 ~/ 5).toInt()).toString()),
              onChanged: (value) {
                if (value.isEmpty) {
                  int val = 0;
                  calc_5(val);
                } else {
                  int val = int.parse(value);
                  calc_5(val);
                }
              },
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                fillColor: Colors.white,
                border: InputBorder.none,
                hintText: "PLATE AMOUNT",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
