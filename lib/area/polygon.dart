import 'package:flutter/material.dart';
import 'outputScreen_two.dart';
import "dart:math";
class polygon extends StatefulWidget {
  @override
  _polygonState createState() => _polygonState();
}

class _polygonState extends State<polygon> {
  @override
  Widget build(BuildContext context) {
    return OutputScreenTwo(variableName1: "n", variableName2: "a", heading: "polygon", formula: (n,a){
      return n*a*a*(1/tan(pi/n))/4;
    },);
    }
}
