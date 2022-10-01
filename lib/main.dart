import 'package:flutter/material.dart';

void main() => runApp(spot());

class spot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('SPOT: Replace with image look for a logo or something'),
        backgroundColor: Colors.black,
      ),
    ));
  }
}
