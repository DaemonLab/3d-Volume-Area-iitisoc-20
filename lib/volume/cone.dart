import 'package:flutter/material.dart';
import 'outputScreen_two.dart';
import "dart:math" show pi;

class cone extends StatefulWidget {
  @override
  _coneState createState() => _coneState();
}

class _coneState extends State<cone> {
  @override
  Widget build(BuildContext context) {
    return OutputScreenTwo(variableName1: "r", variableName2: "h", heading: "cone", formula: (r,h) {
      return (1/3)*pi*r*r*h;
    },);
  }
}
