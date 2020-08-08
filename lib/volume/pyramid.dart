import 'package:flutter/material.dart';
import 'outputScreen_two.dart';
import "dart:math" show pi;

class pyramid extends StatefulWidget {
  @override
  _pyramidState createState() => _pyramidState();
}

class _pyramidState extends State<pyramid> {
  @override
  Widget build(BuildContext context) {
    return OutputScreenTwo(variableName1: "h", variableName2: "a", heading: "pyramid", formula: (h,a) {
      return (1/3)*h*a*a;
    },);
  }
}
