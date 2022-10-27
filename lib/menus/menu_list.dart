import 'package:flutter/material.dart';
import 'package:spot_app/menus/intermediate_menu.dart';
import 'package:spot_app/menus/beginner_menu.dart';
import 'package:spot_app/menus/advanced_menu.dart';
import 'package:spot_app/menus/bodyweight_menu.dart';
import 'package:spot_app/items/buttons.dart';

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
