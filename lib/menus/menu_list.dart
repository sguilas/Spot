import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spot_app/menus/intermediate_menu.dart';
import 'package:spot_app/menus/beginner_menu.dart';
import 'package:spot_app/menus/advanced_menu.dart';
import 'package:spot_app/menus/bodyweight_menu.dart';

class build_list extends StatelessWidget {
  const build_list({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(padding: const EdgeInsets.all(15.0), children: <Widget>[
      menu_button(
        name: "BEGINNER",
        dest: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => beginner_menu()),
          );
        },
      ),
      menu_button(
        name: "INTERMEDIATE",
        dest: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => intermediate_menu()),
          );
        },
      ),
      menu_button(
        name: "ADVANCED",
        dest: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => advanced_menu()),
          );
        },
      ),
      menu_button(
        name: "BODYWEIGHT",
        dest: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => bodyweight_menu()),
          );
        },
      ),
    ]);
  }
}

class menu_button extends StatelessWidget {
  final String name;
  final Function()? dest;
  const menu_button({
    required this.name,
    this.dest,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(5),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            ),
            onPressed: dest,
            child: Text(name,
                style: GoogleFonts.raleway(
                  fontSize: 40,
                  color: Colors.white,
                ))));
  }
}
