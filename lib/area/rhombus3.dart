import 'package:flutter/material.dart';
import 'package:volumearea/outputScreen_two.dart';
import 'package:angles/angles.dart';

class rhombus3 extends StatefulWidget {
  @override
  _rhombus3State createState() => _rhombus3State();
}

class _rhombus3State extends State<rhombus3> {
  @override
  Widget build(BuildContext context) {
    return OutputScreenTwo(heading: "rhombus", variableName1: "a", variableName2: "α", num: 3, formula: (a,b){
      var x = Angle.fromDegrees(b).sin;
      return a*a*x;
    },);
  }
}
