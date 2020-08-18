import 'dart:math';

import 'package:flutter/material.dart';
import 'package:volumearea/outputScreen_three.dart';
class cylinder_hollow extends StatefulWidget {
  @override
  _cylinder_hollowState createState() => _cylinder_hollowState();
}

class _cylinder_hollowState extends State<cylinder_hollow> {
  @override
  Widget build(BuildContext context) {
    return OutputScreenThree(heading: "cylinder-hollow", variableName1: "D", variableName2: "h", variableName3: "d", formula: (D,h,d) {
      return pi*((D/2)*(D/2) - (d/2)*(d/2))*h;
    },);
  }
}
