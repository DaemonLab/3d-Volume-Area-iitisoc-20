import 'package:flutter/material.dart';
import 'package:volumearea/outputScreen_one.dart';

class cube extends StatefulWidget {
  @override
  _cubeState createState() => _cubeState();
}

class _cubeState extends State<cube> {
  @override
  Widget build(BuildContext context) {
    return OutputScreenOne(variableName: "a", heading: "cube", formula: (a) {
      return a*a*a;
    },);
  }
}
