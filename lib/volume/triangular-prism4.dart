import 'package:flutter/material.dart';
import 'package:volumearea/outputScreen_four.dart';
import 'package:angles/angles.dart';
class triangular_prism4 extends StatefulWidget {
  @override
  _triangular_prism4State createState() => _triangular_prism4State();
}

class _triangular_prism4State extends State<triangular_prism4> {
  @override
  Widget build(BuildContext context) {
    return OutputScreenFour(heading: "triangular-prism", variableName1: "a", variableName2: "β", variableName3: "γ", variableName4: "h", num: 4, formula: (a,b,c,h){
      var x = Angle.fromDegrees(b).sin;
      var y = Angle.fromDegrees(c).sin;
      var z = Angle.fromDegrees(b+c).sin;
      return a*a*x*y/(2*z)*h;
    },);
  }
}
