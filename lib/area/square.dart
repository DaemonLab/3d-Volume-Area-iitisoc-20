import 'package:flutter/material.dart';
import 'package:volumearea/outputScreen_one.dart';

class square extends StatefulWidget {
  @override
  _squareState createState() => _squareState();
}

class _squareState extends State<square> {

  @override
  Widget build(BuildContext context) {
    return OutputScreenOne(variableName: "a", heading: "square", formula: (a) {
      return a*a;
    },);
  }
}
