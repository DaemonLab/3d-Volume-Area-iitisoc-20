import 'package:flutter/material.dart';
import 'package:volumearea/outputScreen_three.dart';
class pyramid_truncated extends StatefulWidget {
  @override
  _pyramid_truncatedState createState() => _pyramid_truncatedState();
}

class _pyramid_truncatedState extends State<pyramid_truncated> {
  @override
  Widget build(BuildContext context) {
    return OutputScreenThree(heading: "pyramid-truncated", variableName1: "a", variableName2: "b", variableName3: "h", formula: (a,b,h){
      return (1/6)*h*(a*a + b*b + (a+b)*(a+b));
    },);
  }
}
