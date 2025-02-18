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
      'triangle1' : (context) => triangle1(),
      'triangle2' : (context) => triangle2(),
      'triangle3' : (context) => triangle3(),
      'triangle4' : (context) => triangle4(),
      '/annulus' : (context) => annulus(),
      '/circle' : (context) => circle(),
      '/ellipse' : (context) => ellipse(),
      '/hexagon' : (context) => hexagon(),
      '/kite' : (context) => kite(),
      'kite1' : (context) => kite1(),
      'kite2' : (context) => kite2(),
      '/octagon' : (context) => octagon(),
      '/parallelogram' : (context) => parallelogram(),
      'parallelogram1' : (context) => parallelogram1(),
      'parallelogram2' : (context) => parallelogram2(),
      'parallelogram3' : (context) => parallelogram3(),
      '/pentagon' : (context) => pentagon(),
      '/polygon' : (context) => polygon(),
      '/quadrilateral' : (context) => quadrilateral(),
      '/rhombus' : (context) => rhombus(),
      'rhombus1' : (context) => rhombus1(),
      'rhombus2' : (context) => rhombus2(),
      'rhombus3' : (context) => rhombus3(),
      '/sector' : (context) => sector(),
      '/semicircle' : (context) => semicircle(),
      '/trapezoid' : (context) => trapezoid(),
      '/box' : (context) => box(),
      '/capsule' : (context) => capsule(),
      '/cone' : (context) => cone(),
      '/cube' : (context) => cube(),
      '/cylinder' : (context) => cylinder(),
      '/cylinder-hollow' : (context) => cylinder_hollow(),
      '/ellipsoid' : (context) => ellipsoid(),
      '/frustum' : (context) => frustum(),
      '/hemisphere' : (context) => hemisphere(),
      '/pyramid' : (context) => pyramid(),
      '/pyramid-truncated' : (context) => pyramid_truncated(),
      '/sphere' : (context) => sphere(),
      '/spherical-cap' : (context) => spherical_cap(),
      '/triangular-prism' : (context) => triangular_prism(),
      'triangular-prism1' : (context) => triangular_prism1(),
      'triangular-prism2' : (context) => triangular_prism2(),
      'triangular-prism3' : (context) => triangular_prism3(),
      'triangular-prism4' : (context) => triangular_prism4(),


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
