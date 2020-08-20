import 'package:flutter/material.dart';
import 'package:volumearea/outputScreen_three.dart';
import 'package:angles/angles.dart';
class triangle4 extends StatefulWidget {
  @override
  _triangle4State createState() => _triangle4State();
}

class _triangle4State extends State<triangle4> {
  @override
  Widget build(BuildContext context) {
    return OutputScreenThree(heading: "triangle", variableName1: "a", variableName2: "β", variableName3: "γ", formula: (a,b,c){
      var x = Angle.fromDegrees(b).sin;
      var y = Angle.fromDegrees(c).sin;
      var z = Angle.fromDegrees(b+c).sin;
      return a*a*x*y/(2*z);
    },num: 4,);
  }
}
