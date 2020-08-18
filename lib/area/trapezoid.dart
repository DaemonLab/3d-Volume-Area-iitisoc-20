import 'package:flutter/material.dart';
import 'package:volumearea/outputScreen_three.dart';
class trapezoid extends StatefulWidget {
  @override
  _trapezoidState createState() => _trapezoidState();
}

class _trapezoidState extends State<trapezoid> {
  @override
  Widget build(BuildContext context) {
    return OutputScreenThree(heading: "trapezoid", variableName1: "a", variableName2: "b", variableName3: "h", formula: (a,b,h) {
      //TODO: Add snackbar for b < a
      return (a+b)*h/2;
    },);
  }
}
