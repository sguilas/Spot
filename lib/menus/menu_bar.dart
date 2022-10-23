import 'package:flutter/material.dart';
import 'package:spot_app/calculator/calc.dart';
import 'package:spot_app/home.dart';

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
