import 'package:angles/angles.dart';
import 'package:flutter/material.dart';
import 'package:volumearea/outputScreen_three.dart';

class quadrilateral extends StatefulWidget {
  @override
  _quadrilateralState createState() => _quadrilateralState();
}

class _quadrilateralState extends State<quadrilateral> {
  @override
  Widget build(BuildContext context) {
    return OutputScreenThree(heading: "quadrilateral", variableName1: "e", variableName2: "f", variableName3: "α (in deg)", formula: (e,f,g) {
      var x = Angle.fromDegrees(g).sin;
      return e*f*x;
    },);
  }
}
