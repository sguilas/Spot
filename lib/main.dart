import 'package:flutter/material.dart';
import 'package:spot_app/constants.dart';

void main() => runApp(spot());

class spot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("SPOT/"),
        backgroundColor: Colors.black,
      ),
    ));
  }
}
