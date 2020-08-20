import 'package:flutter/material.dart';
import 'package:volumearea/outputScreen_three.dart';

class triangular_prism1 extends StatefulWidget {
  @override
  _triangular_prism1State createState() => _triangular_prism1State();
}

class _triangular_prism1State extends State<triangular_prism1> {
  @override
  Widget build(BuildContext context) {
    return OutputScreenThree(heading: "triangular-prism", variableName1: "h", variableName2: "hᵇ", variableName3: "h", num: 1, formula: (h,b,H){
      return (1/2)*h*b*H;
    },);
  }
}
