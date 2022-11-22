import 'package:flutter/material.dart';
import 'package:spot_app/calculator/calc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:spot_app/main.dart';
import 'package:spot_app/menus/advanced_menu.dart';
import 'package:spot_app/menus/beginner_menu.dart';
import 'package:spot_app/menus/bodyweight_menu.dart';
import 'package:spot_app/menus/custom.dart';
import 'package:spot_app/menus/intermediate_menu.dart';

class calc_menu_bar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(60);
  const calc_menu_bar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Color.fromRGBO(1, 1, 1, 255),
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
      ),
    );
  }
}

class set_check extends StatefulWidget {
  const set_check({
    Key? key,
  }) : super(key: key);

  @override
  State<set_check> createState() => _set_checkState();
}

class _set_checkState extends State<set_check> {
  @override
  bool ispressed = false;
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: ispressed ? Colors.green : Colors.black,
        ),
        onPressed: () {
          setState(() {
            ispressed = true;
          });
        },
        child: const Icon(Icons.check_circle_outline_sharp, size: 100));
  }
}

class nav_button extends StatelessWidget {
  final String name;
  final Function()? dest;
  const nav_button({
    required this.name,
    this.dest,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              backgroundColor: Colors.black,
            ),
            onPressed: dest,
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: GoogleFonts.raleway(fontSize: 25),
            )));
  }
}

Drawer nav_drawer(BuildContext context) {
  return Drawer(
    backgroundColor: const Color.fromRGBO(226, 225, 226, 1),
    child: ListView(
      children: [
        Image.asset(
          "assets/spot_app_photos/logo2.png",
          height: 200,
        ),
        ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => spot()),
            );
          },
          leading: const Icon(Icons.home_filled),
          title: const Text("HOME"),
        ),
        ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const calculator()),
            );
          },
          leading: const Icon(Icons.calculate),
          title: const Text("CALCULATOR"),
        ),
        ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => custom_menu()),
            );
          },
          leading: const Icon(Icons.dashboard),
          title: const Text("CUSTOM"),
        ),
        ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => beginner_menu()),
            );
          },
          leading: const Icon(Icons.adjust),
          title: const Text("BEGINNER"),
        ),
        ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => intermediate_menu()),
            );
          },
          leading: const Icon(Icons.adjust),
          title: const Text("INTERMEDIATE"),
        ),
        ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => advanced_menu()),
            );
          },
          leading: const Icon(Icons.adjust),
          title: const Text("ADVANCED"),
        ),
        ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => bodyweight_menu()),
            );
          },
          leading: const Icon(Icons.adjust),
          title: const Text("BODYWEIGHT"),
        ),
      ],
    ),
  );
}
