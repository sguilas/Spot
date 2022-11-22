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
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color.fromRGBO(1, 1, 1, 255),
        elevation: 0,
      ),
      drawer: nav_drawer(context),
      body: Column(
        children: <Widget>[
          //ListView.builder(itemBuilder: ),
          Text(workout),
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
