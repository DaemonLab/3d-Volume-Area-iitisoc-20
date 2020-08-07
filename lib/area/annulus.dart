import 'package:flutter/material.dart';
import 'outputScreen_two.dart';
import "dart:math" show pi;

class annulus extends StatefulWidget {
  @override
  _annulusState createState() => _annulusState();
}

class _annulusState extends State<annulus> {


  @override
  Widget build(BuildContext context) {
    return OutputScreenTwo(variableName1: "r", variableName2: "R", heading: "annulus", formula: (r,R) {
      return pi*(R*R-r*r);
    },);
  }
}