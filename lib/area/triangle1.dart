import 'package:flutter/material.dart';
import 'package:volumearea/outputScreen_two.dart';

class triangle1 extends StatefulWidget {
  @override
  _triangle1State createState() => _triangle1State();
}

class _triangle1State extends State<triangle1> {
  @override
  Widget build(BuildContext context) {
    return OutputScreenTwo(heading: "triangle", variableName1: "b", variableName2: "h", formula: (b,h){
      return b*h/2;
    }, num: 1,);
  }
}
