import 'package:flutter/material.dart';
import 'package:volumearea/selector_4.dart';
class triangular_prism extends StatefulWidget {
  @override
  _triangular_prismState createState() => _triangular_prismState();
}

class _triangular_prismState extends State<triangular_prism> {
  @override
  Widget build(BuildContext context) {
    return Selector(title: "triangular-prism", item1: "▲ base and height", item2: "▲ 3 sides", item3: "▲ 2 sides + angle between them", item4: "▲ 2 angles + side between them",);
  }
}
