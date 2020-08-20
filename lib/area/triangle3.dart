import 'package:flutter/material.dart';
import 'package:volumearea/outputScreen_three.dart';
import 'package:angles/angles.dart';
class triangle3 extends StatefulWidget {
  @override
  _triangle3State createState() => _triangle3State();
}

class _triangle3State extends State<triangle3> {
  @override
  Widget build(BuildContext context) {
    return OutputScreenThree(heading: "triangle", variableName1: "a", variableName2: "b", variableName3: "γ", formula: (a,b,c){
      var x = Angle.fromDegrees(c).sin;
      return 0.5*a*b*x;
    }, num: 3,);
  }
}
