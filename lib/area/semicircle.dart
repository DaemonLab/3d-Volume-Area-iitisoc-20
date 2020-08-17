import 'package:flutter/material.dart';
import 'package:volumearea/outputScreen_one.dart';
import "dart:math" show pi;

class semicircle extends StatefulWidget {
  @override
  _semicircleState createState() => _semicircleState();
}

class _semicircleState extends State<semicircle> {

  @override
  Widget build(BuildContext context) {
    return OutputScreenOne(variableName: "r", heading: "semicircle", formula: (r) {
      return pi*r*r/2;
    },);
  }
}
