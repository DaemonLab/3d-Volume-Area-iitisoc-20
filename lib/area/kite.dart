import 'package:flutter/material.dart';
import 'package:volumearea/selector_2.dart';

class kite extends StatefulWidget {
  @override
  _kiteState createState() => _kiteState();
}

class _kiteState extends State<kite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Selector(title: "Kite", text1: "diagonals", text2: "two unequal sides + angle between them ", route1: '/kite1', route2: '/kite2',
        ),
      ),
    );
  }
}
