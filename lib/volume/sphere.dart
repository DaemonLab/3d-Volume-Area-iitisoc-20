import 'package:flutter/material.dart';
import 'package:volumearea/outputScreen_one.dart';
import "dart:math" show pi;

class sphere extends StatefulWidget {
  @override
  _sphereState createState() => _sphereState();
}

class _sphereState extends State<sphere> {
  @override
  Widget build(BuildContext context) {
    return OutputScreenOne(variableName: "r", heading: "sphere", formula: (r) {
      return pi*r*r*r*(4/3);
    },);
  }
}
