import 'package:flutter/material.dart';
import 'package:volumearea/selector_4.dart';
class triangle extends StatefulWidget {
  @override
  _triangleState createState() => _triangleState();
}

class _triangleState extends State<triangle> {
  @override
  Widget build(BuildContext context) {
    return Selector(title: "triangle", item1: "base and height", item2: "three sides (SSS)", item3: "two sides + angle between them (SAS)", item4: "two angles + side between them (ASA)",);
  }
}
