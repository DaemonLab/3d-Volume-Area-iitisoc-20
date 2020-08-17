import 'package:flutter/material.dart';
import 'package:volumearea/outputScreen_one.dart';
import "dart:math" show sqrt;

class pentagon extends StatefulWidget {
  @override
  _pentagonState createState() => _pentagonState();
}

class _pentagonState extends State<pentagon> {
  @override
  Widget build(BuildContext context) {
    return OutputScreenOne(variableName: "a", heading: "pentagon", formula: (a) {
      return a*a*(sqrt( 25 + 10*sqrt(5)))/4;
    },);
  }
}
