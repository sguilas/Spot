import 'package:flutter/material.dart';
import 'package:spot_app/items/buttons.dart';
import 'calc_body.dart';

class calculator extends StatelessWidget {
  const calculator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.white,
        appBar: calc_menu_bar(),
        body: calcbody());
  }
}
