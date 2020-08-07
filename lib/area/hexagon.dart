import 'package:flutter/material.dart';
import 'package:volumearea/area/outputScreen_one.dart';
import "dart:math" show sqrt;

class hexagon extends StatefulWidget {
  @override
  _hexagonState createState() => _hexagonState();
}

class _hexagonState extends State<hexagon> {

  @override
  Widget build(BuildContext context) {
    return OutputScreenOne(variableName: "a", heading: "hexagon", formula: (a) {
        return (3/2)*sqrt(3)*a*a;
      },);
  }
}
