import 'package:flutter/material.dart';
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
        ],
      ),
    );
  }
}
