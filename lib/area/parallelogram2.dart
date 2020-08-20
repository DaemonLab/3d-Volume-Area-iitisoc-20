import 'package:flutter/material.dart';
import 'package:volumearea/outputScreen_three.dart';
import 'package:angles/angles.dart';
class parallelogram2 extends StatefulWidget {
  @override
  _parallelogram2State createState() => _parallelogram2State();
}

class _parallelogram2State extends State<parallelogram2> {
  @override
  void initState() {
    super.initState();
    print("parallelogram2");
  }
  @override
  Widget build(BuildContext context) {
    return OutputScreenThree(heading: "parallelogram", variableName1: "a", variableName2: "b", variableName3: "α",formula: (a,b,c) {
      var x = Angle.fromDegrees(c).sin;
      return a*b*x;
    }, num: 2,);
  }
}
