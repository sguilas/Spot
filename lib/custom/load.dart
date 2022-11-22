import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spot_app/items/buttons.dart';
import 'package:spot_app/items/finished.dart';
import 'package:spot_app/items/sets.dart';

class load_workout extends StatefulWidget {
  List<String> workout;

  load_workout({
    required this.workout,
  });

  @override
  State<load_workout> createState() => _load_workoutState();
}

class _load_workoutState extends State<load_workout> {
  final completed = Set<String>();

  Widget row_builder(String item) {
    final saved = completed.contains(item);
    if (item == "FINISH") {
      return ListTile(
        title: const Text(
          "FINISH",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
        tileColor: Colors.black,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => finished()),
          );
        },
      );
    } else {
      return ListTile(
        title: Text(item),
        trailing: Icon(
            saved
                ? Icons.check_circle_outline_outlined
                : Icons.check_circle_outline_outlined,
            color: saved ? Colors.green : Colors.red),
        onTap: () {
          setState(() {
            if (saved) {
              completed.remove(item);
            } else {
              completed.add(item);
            }
          });
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => three_set()),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //extendBodyBehindAppBar: true,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: const Color.fromRGBO(1, 1, 1, 255),
        elevation: 0,
      ),
      drawer: nav_drawer(context),
      body: ListView.builder(
        itemCount: widget.workout.length,
        itemBuilder: (context, index) {
          return row_builder(widget.workout[index]);
        },
      ),
      ////////////////////////////////
    );
  }
}
