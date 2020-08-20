import 'dart:math';

import 'package:flutter/material.dart';
import 'package:volumearea/outputScreen_four.dart';

class triangular_prism2 extends StatefulWidget {
  @override
  _triangular_prism2State createState() => _triangular_prism2State();
}

class _triangular_prism2State extends State<triangular_prism2> {
  @override
  Widget build(BuildContext context) {
    return OutputScreenFour(heading: "triangular-prism", variableName1: "a", variableName2: "b", variableName3: "c", variableName4: "h", num: 2, formula: (a,b,c,h){
      return 0.25 *sqrt((a+b+c)*(-a+b+c)*(a-b+c)*(a+b-c))*h;
    },);
  }
}
