import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spot_app/items/buttons.dart';

class Homepage2 extends StatelessWidget {
  const Homepage2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: const Color.fromRGBO(1, 1, 1, 255),
          elevation: 0,
        ),
        backgroundColor: Colors.black,
        drawer: nav_drawer(context),
        body: Image.asset(
          "assets/spot_app_photos/main2.jpeg",
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
        ));
  }
}
