import 'package:flutter/material.dart';
import 'package:spot_app/home.dart';

void main() => runApp(spot());

class spot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "SPOT/",
      home: Homepage(),
    );
  }
}
