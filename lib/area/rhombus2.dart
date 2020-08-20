import 'package:flutter/material.dart';
import 'package:volumearea/outputScreen_two.dart';

class rhombus2 extends StatefulWidget {
  @override
  _rhombus2State createState() => _rhombus2State();
}

class _rhombus2State extends State<rhombus2> {
  @override
  Widget build(BuildContext context) {
    return OutputScreenTwo(heading: "rhombus", variableName1: "e", variableName2: "f", num: 2, formula: (e,f){
      return e*f/2;
    },);
  }
}
