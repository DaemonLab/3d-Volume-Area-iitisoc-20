import 'package:flutter/material.dart';
import 'package:volumearea/outputScreen_one.dart';
import "dart:math" show pi;

class circle extends StatefulWidget {
  @override
  _circleState createState() => _circleState();
}

class _circleState extends State<circle> {

  @override
  Widget build(BuildContext context) {
    return OutputScreenOne(variableName: "r", heading: "circle", formula: (r) {
      return pi*r*r;
    },);
  }
}
