import 'dart:math';

import 'package:flutter/material.dart';
import 'package:volumearea/outputScreen_three.dart';
class spherical_cap extends StatefulWidget {
  @override
  _spherical_capState createState() => _spherical_capState();
}

class _spherical_capState extends State<spherical_cap> {
  @override
  Widget build(BuildContext context) {
    return OutputScreenThree(heading: "spherical-cap", variableName1: "r", variableName2: "a", variableName3: "h", formula: (r,a,h){
      var sina = (r-h)/r;
      return (1/3)*pi*r*r*r*(2-3*sina+sina*sina*sina);
    },);
  }
}
