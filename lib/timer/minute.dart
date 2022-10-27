import 'package:flutter/material.dart';

class minute extends StatefulWidget {
  minute({Key? key}) : super(key: key);

  @override
  _minuteState createState() => _minuteState();
}

class _minuteState extends State<minute> {
  int counter = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      )),
    );
  }
}
