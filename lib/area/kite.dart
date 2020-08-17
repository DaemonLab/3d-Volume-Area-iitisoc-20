import 'package:flutter/material.dart';
import 'selector_2.dart';
import 'outputScreen_two.dart';

class kite extends StatefulWidget {
  @override
  _kiteState createState() => _kiteState();
}

class _kiteState extends State<kite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Selector(title: "KITE", text1: "Diagonals", text2: "two unequal sides + angle between them ",
          wid1: OutputScreenTwo(variableName1: "e", variableName2: "f", formula: (e,f) {return e*f/2;}, heading: "Kite",),
        ),
      ),
    );
  }
}
