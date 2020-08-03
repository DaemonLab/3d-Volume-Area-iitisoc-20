import 'package:flutter/material.dart';

class Volume extends StatefulWidget {
  @override
  _VolumeState createState() => _VolumeState();
}

class _VolumeState extends State<Volume> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(child: Text('Volume')),
      )
      ,
    );
  }
}
