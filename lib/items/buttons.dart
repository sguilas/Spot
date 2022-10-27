import 'package:flutter/material.dart';
import 'package:spot_app/calculator/calc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class calc_menu_bar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(60);
  const calc_menu_bar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset(
        'assets/spot_app_photos/logo1.png',
        height: 87,
        width: 87,
      ),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_circle_left_outlined,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}

class menu_bar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(60);
  const menu_bar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset(
        'assets/spot_app_photos/logo1.png',
        height: 87,
        width: 87,
      ),
      leading: IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const calculator()),
          );
        },
        icon: const Icon(
          Icons.self_improvement_sharp,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.black,
    );
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
              backgroundColor: Colors.white70,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            ),
            onPressed: dest,
            child: Text(name,
                textAlign: TextAlign.center,
                style: GoogleFonts.raleway(
                  fontSize: 40,
                  color: Colors.black,
                ))));
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
        // back button
        height: 50,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              backgroundColor: Colors.black,
            ),
            onPressed: dest,
            child: Text(
              name,
              style: GoogleFonts.raleway(fontSize: 30),
            )));
  }
}
