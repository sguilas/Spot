import 'package:flutter/material.dart';
import 'update_text.dart';
import 'package:spot_app/calculator/calculators.dart';

class calcbody extends StatelessWidget {
  calcbody({
    Key? key,
  }) : super(key: key);

  final String total = calc_total();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          alignment: Alignment.bottomCenter,
          child: updatetext(),
        ),
        ListTile(
          leading: const Text(
            "45 LBS",
            style: TextStyle(fontSize: 30),
          ),
          title: TextField(
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
            textAlign: TextAlign.right,
            decoration: const InputDecoration(
              fillColor: Colors.white,
              border: InputBorder.none,
              hintText: "PLATE AMOUNT",
            ),
          ),
        ),
        ListTile(
          leading: const Text(
            "35 LBS",
            style: TextStyle(fontSize: 30),
          ),
          title: TextField(
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
            textAlign: TextAlign.right,
            decoration: const InputDecoration(
              fillColor: Colors.white,
              border: InputBorder.none,
              hintText: "PLATE AMOUNT",
            ),
          ),
        ),
        ListTile(
          leading: const Text(
            "25 LBS",
            style: TextStyle(fontSize: 30),
          ),
          title: TextField(
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
            textAlign: TextAlign.right,
            decoration: const InputDecoration(
              fillColor: Colors.white,
              border: InputBorder.none,
              hintText: "PLATE AMOUNT",
            ),
          ),
        ),
        ListTile(
          leading: const Text(
            "10 LBS",
            style: TextStyle(fontSize: 30),
          ),
          title: TextField(
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
            textAlign: TextAlign.right,
            decoration: const InputDecoration(
              fillColor: Colors.white,
              border: InputBorder.none,
              hintText: "PLATE AMOUNT",
            ),
          ),
        ),
        ListTile(
          leading: const Text(
            "5 LBS",
            style: TextStyle(fontSize: 30),
          ),
          title: TextField(
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
            textAlign: TextAlign.right,
            decoration: const InputDecoration(
              fillColor: Colors.white,
              border: InputBorder.none,
              hintText: "PLATE AMOUNT",
            ),
          ),
        ),
      ],
    ));
  }
}
