import 'package:flutter/material.dart';
import 'package:volumearea/outputScreen_two.dart';


class rhombus1 extends StatefulWidget {
  @override
  _rhombus1State createState() => _rhombus1State();
}

class _rhombus1State extends State<rhombus1> {
  @override
  Widget build(BuildContext context) {
    return OutputScreenTwo(heading: "rhombus", variableName1: "a", variableName2: "h", num: 1, formula: (a,h){
      return a*h;
    },);
  }
}
