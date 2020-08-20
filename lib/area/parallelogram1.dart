import 'package:flutter/material.dart';
import 'package:volumearea/outputScreen_two.dart';
class parallelogram1 extends StatefulWidget {
  @override
  _parallelogram1State createState() => _parallelogram1State();
}

class _parallelogram1State extends State<parallelogram1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("parallelogram1");
  }
  @override
  Widget build(BuildContext context) {
    return OutputScreenTwo(heading: "parallelogram", variableName1: "b", variableName2: "h", formula: (b,h) {
      return b*h;
    },);
  }
}
