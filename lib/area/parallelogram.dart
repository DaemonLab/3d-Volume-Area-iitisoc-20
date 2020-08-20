import 'package:flutter/material.dart';
import 'package:volumearea/selector_3.dart';
class parallelogram extends StatefulWidget {
  @override
  _parallelogramState createState() => _parallelogramState();
}

class _parallelogramState extends State<parallelogram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Selector(title: "parallelogram", item1: "base and height", item2: "sides + angle between them", item3: "diagonals + angle between them" ,),
      ),
    );
  }
}
