import 'package:flutter/material.dart';
import 'package:volumearea/outputScreen_two.dart';

class kite1 extends StatefulWidget {
  @override
  _kite1State createState() => _kite1State();
}

class _kite1State extends State<kite1> {
  @override
  Widget build(BuildContext context) {
    return OutputScreenTwo(heading: "kite", variableName1: "e", variableName2: "f", num: 1, formula: (e,f){
      return e*f/2;
    },);

  }
}
