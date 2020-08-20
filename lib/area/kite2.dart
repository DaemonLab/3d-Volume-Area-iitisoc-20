import 'package:flutter/material.dart';
import 'package:volumearea/outputScreen_three.dart';
import 'package:angles/angles.dart';

class kite2 extends StatefulWidget {
  @override
  _kite2State createState() => _kite2State();
}

class _kite2State extends State<kite2> {
  @override
  Widget build(BuildContext context) {
    return OutputScreenThree(heading: "kite", variableName1: "a", variableName2: "b", variableName3: "α", num: 2, formula: (a,b,c){
      var x = Angle.fromDegrees(c).sin;
      return a*b*x;
    },);
  }
}
