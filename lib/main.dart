import 'package:flutter/material.dart';
import 'package:volumearea/services/volume.dart';
import 'package:volumearea/services/area.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    routes: {
      '/volume' : (context) => Volume(),
      '/area' : (context) => Area(),
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
