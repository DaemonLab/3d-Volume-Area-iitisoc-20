import 'package:flutter/material.dart';
import 'outputScreen_two.dart';

class rectangle extends StatefulWidget {
  @override
  _rectangleState createState() => _rectangleState();
}

class _rectangleState extends State<rectangle> {
  @override
  Widget build(BuildContext context) {
    return OutputScreenTwo(variableName1: "a", variableName2: "b", heading: "rectangle", formula: (a,b) {
      return a*b;
    },);
  }
}
