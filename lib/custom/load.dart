import 'package:flutter/material.dart';
import 'package:spot_app/items/buttons.dart';
import 'package:google_fonts/google_fonts.dart';

class load_workout extends StatelessWidget {
  String workout;

  load_workout({
    required this.workout,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const calc_menu_bar(),
      body: Column(
        children: <Widget>[
          //ListView.builder(itemBuilder: ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "RETURN",
              style: GoogleFonts.raleway(fontSize: 50),
            ),
          )
        ],
      ),
    );
  }
}
