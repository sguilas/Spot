import 'package:flutter/material.dart';
import 'package:spot_app/menus/menu_bar.dart';
import 'calc_body.dart';

class calculator extends StatelessWidget {
  const calculator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.white,
        appBar: const calc_menu_bar(),
        body: calcbody());
  }
}
