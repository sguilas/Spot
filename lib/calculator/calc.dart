import 'package:flutter/material.dart';
import 'package:spot_app/home.dart';

class calculator extends StatelessWidget {
  const calculator({
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
              MaterialPageRoute(builder: (context) => const Homepage()),
            );
          },
          icon: const Icon(
            Icons.arrow_circle_left_outlined,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Colors.black],
          )),
          child: Center(
            child: Text("WEIGHT",
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                )),
          ),
        ),
      ),
    );
  }
}
