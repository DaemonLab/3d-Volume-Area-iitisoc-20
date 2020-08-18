import 'dart:math';

import 'package:flutter/material.dart';
import 'package:volumearea/outputScreen_three.dart';
class frustum extends StatefulWidget {
  @override
  _frustumState createState() => _frustumState();
}

class _frustumState extends State<frustum> {
  @override
  Widget build(BuildContext context) {
    return OutputScreenThree(heading: "frustum", variableName1: "r", variableName2: "R", variableName3: "h", formula: (r,R,h) {
      return (1/3)*pi*h*(r*r + R*R + r*R);
    },);
  }
}
