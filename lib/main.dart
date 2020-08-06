import 'package:flutter/material.dart';
import 'package:volumearea/area/area.dart';
import 'package:volumearea/volume/volume.dart';
import 'importing.dart'; // holds all the imports for the project

void main() {
  runApp(MaterialApp(
    home: Home(),
    routes: {
      '/volume' : (context) => Volume(),
      '/area' : (context) => Area(),
      '/square' : (context) => square(),
      '/rectangle' : (context) => rectangle(),
      '/triangle' : (context) => triangle(),
      '/annulus' : (context) => annulus(),
      '/circle' : (context) => circle(),
      '/ellipse' : (context) => ellipse(),
      '/hexagon' : (context) => hexagon(),
      '/kite' : (context) => kite(),
      '/octagon' : (context) => octagon(),
      '/parallelogram' : (context) => parallelogram(),
      '/pentagon' : (context) => pentagon(),
      '/polygon' : (context) => polygon(),
      '/quadrilateral' : (context) => quadrilateral(),
      '/rhombus' : (context) => rhombus(),
      '/sector' : (context) => sector(),
      '/semicircle' : (context) => semicircle(),
      '/trapezoid' : (context) => trapezoid(),

    },
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Volume/Area Calculator'),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/volume');
                },
                child: Text('Volume'),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/area');
                },
                child: Text('Area'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
