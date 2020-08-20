import 'package:flutter/material.dart';
import 'package:volumearea/selector_3.dart';
class rhombus extends StatefulWidget {
  @override
  _rhombusState createState() => _rhombusState();
}

class _rhombusState extends State<rhombus> {
  @override
  Widget build(BuildContext context) {
    return Selector(title: "rhombus", item1: "side and height", item2: "diagonals", item3: "side and any angle",);
  }
}
