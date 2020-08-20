import 'package:flutter/material.dart';
import 'package:volumearea/outputScreen_three.dart';
import 'package:angles/angles.dart';
class parallelogram3 extends StatefulWidget {
  @override
  _parallelogram3State createState() => _parallelogram3State();
}

class _parallelogram3State extends State<parallelogram3> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("parallelogram3");
  }
  @override
  Widget build(BuildContext context) {
    return OutputScreenThree(heading: "parallelogram", variableName1: "e", variableName2: "f", variableName3: "θ", formula: (e,f,t){
      var x = Angle.fromDegrees(t).sin;
      return e*f*x;
    },);
  }
}
