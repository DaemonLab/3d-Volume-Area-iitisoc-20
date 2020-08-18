import 'dart:math';

import 'package:flutter/material.dart';
import 'package:volumearea/outputScreen_three.dart';
class ellipsoid extends StatefulWidget {
  @override
  _ellipsoidState createState() => _ellipsoidState();
}

class _ellipsoidState extends State<ellipsoid> {
  @override
  Widget build(BuildContext context) {
    return OutputScreenThree(heading: "ellipsoid", variableName1: "a", variableName2: "b", variableName3: "c", formula: (a,b,c) {
      return (4/3)*pi*a*b*c;
    },);
  }
}
