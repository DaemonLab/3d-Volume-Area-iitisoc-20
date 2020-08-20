import 'dart:math';

import 'package:flutter/material.dart';
import 'package:volumearea/outputScreen_three.dart';
class triangle2 extends StatefulWidget {
  @override
  _triangle2State createState() => _triangle2State();
}

class _triangle2State extends State<triangle2> {
  @override
  Widget build(BuildContext context) {
    return OutputScreenThree(heading: "triangle", variableName1: "a", variableName2: "b", variableName3: "c", formula: (a,b,c){
      return 0.25 *sqrt((a+b+c)*(-a+b+c)*(a-b+c)*(a+b-c));
    }, num: 2,);
  }
}
