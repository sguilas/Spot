import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'update_text.dart';
import 'package:spot_app/calculator/calculators.dart';
import 'calc_labels.dart';

class calcbody extends StatelessWidget {
  calcbody({
    Key? key,
  }) : super(key: key);

  final String total = calc_total();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.bottomCenter,
            child: updatetext(),
          ),
          const labels(),
          const labels_right(),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 150),
            alignment: Alignment.bottomCenter,
            child: const Text(
              "*Place how many plates you're loading on the bar. The bar weighs 45 lbs by itself.",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
