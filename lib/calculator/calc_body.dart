import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'calc_labels.dart';

class calcbody extends StatelessWidget {
  const calcbody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Colors.black],
          ))),
          const labels(),
          Column(// right side

              ),
        ],
      ),
    );
  }
}
