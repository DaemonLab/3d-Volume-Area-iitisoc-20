import 'package:flutter/material.dart';
import 'package:volumearea/outputScreen_one.dart';
import 'dart:math' show sqrt;

class octagon extends StatefulWidget {
  @override
  _octagonState createState() => _octagonState();
}

class _octagonState extends State<octagon> {
  @override
  Widget build(BuildContext context) {
    return OutputScreenOne(variableName: "a", heading: "octagon", formula: (a) {
      return 2*(1+sqrt(2))*a*a;
    },);
  }
}
