import 'package:flutter/material.dart';
import 'package:volumearea/outputScreen_three.dart';

class box extends StatefulWidget {
  @override
  _boxState createState() => _boxState();
}

class _boxState extends State<box> {
  @override
  Widget build(BuildContext context) {
    return OutputScreenThree(variableName1: "l", variableName2: "h", variableName3: "w", heading: "box", formula: (l, h, w) {
          return l*h*w;
    },);
  }
}


