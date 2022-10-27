import 'package:flutter/material.dart';
import 'menus/menu_list.dart';
import 'package:spot_app/items/buttons.dart';

class Homepage extends StatelessWidget {
  const Homepage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: Colors.white,
      appBar: menu_bar(),
      body: build_list(),
    );
  }
}
