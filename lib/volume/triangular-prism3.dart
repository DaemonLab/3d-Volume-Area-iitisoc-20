import 'package:flutter/material.dart';
import 'package:volumearea/outputScreen_four.dart';
import 'package:angles/angles.dart';

class triangular_prism3 extends StatefulWidget {
  @override
  _triangular_prism3State createState() => _triangular_prism3State();
}

class _triangular_prism3State extends State<triangular_prism3> {
  @override
  Widget build(BuildContext context) {
    return OutputScreenFour(heading: "triangular-prism", variableName1: "a", variableName2: "b", variableName3: "γ", variableName4: "h", num: 3, formula: (a,b,c,h){
      var x = Angle.fromDegrees(c).sin;
      return a*b*x*h;
    },);
  }
}
