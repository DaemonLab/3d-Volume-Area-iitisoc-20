import 'package:flutter/material.dart';
import 'package:volumearea/outputScreen_two.dart';
import "dart:math" show pi;

class cylinder extends StatefulWidget {
  @override
  _cylinderState createState() => _cylinderState();
}

class _cylinderState extends State<cylinder> {
  @override
  Widget build(BuildContext context) {
    return OutputScreenTwo(variableName1: "r", variableName2: "h", heading: "cylinder", formula: (r,h) {
      return pi*r*r*h;
    },);
  }
}
