import 'package:flutter/material.dart';
import 'calculator/calc.dart';

class Homepage extends StatelessWidget {
  const Homepage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
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
      ),
      body: Center(
        child: Container(
          // change to list view and turn into buttons??
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.white, Colors.black]),
          ),
        ),
      ),
    );
  }
}
