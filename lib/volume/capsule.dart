import 'package:flutter/material.dart';
import 'outputScreen_two.dart';
import "dart:math" show pi;

class capsule extends StatefulWidget {
  @override
  _capsuleState createState() => _capsuleState();
}

class _capsuleState extends State<capsule> {
  @override
  Widget build(BuildContext context) {
    return OutputScreenTwo(variableName1: "r", variableName2: "h", heading: "capsule", formula: (r,h) {
      return pi*r*r*(h + (4/3)*r);
    },);
  }
}
