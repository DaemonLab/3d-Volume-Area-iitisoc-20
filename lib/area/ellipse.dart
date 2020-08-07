import 'package:flutter/material.dart';
import 'outputScreen_two.dart';
import "dart:math" show pi;

class ellipse extends StatefulWidget {
  @override
  _ellipseState createState() => _ellipseState();
}

class _ellipseState extends State<ellipse> {

  @override
  Widget build(BuildContext context) {
    return OutputScreenTwo(variableName1: "a", variableName2: "b", heading: "ellipse", formula: (a,b) {
      return pi*a*b;
    },);
  }
}
