import 'package:flutter/material.dart';
import 'outputScreen_two.dart';

class sector extends StatefulWidget {
  @override
  _sectorState createState() => _sectorState();
}

class _sectorState extends State<sector> {

  @override
  Widget build(BuildContext context) {
    return OutputScreenTwo(variableName1: "α", variableName2: "r", heading: "sector", formula: (a,r) {
      return r*r*a/2;
    },);
  }
}
