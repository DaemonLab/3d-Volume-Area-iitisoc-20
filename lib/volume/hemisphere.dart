import 'package:flutter/material.dart';
import 'package:volumearea/outputScreen_one.dart';
import "dart:math" show pi;

class hemisphere extends StatefulWidget {
  @override
  _hemisphereState createState() => _hemisphereState();
}

class _hemisphereState extends State<hemisphere> {
  @override
  Widget build(BuildContext context) {
    return OutputScreenOne(variableName: "r", heading: "hemisphere", formula: (r) {
      return pi*r*r*r*(2/3);
    },);
  }
}
