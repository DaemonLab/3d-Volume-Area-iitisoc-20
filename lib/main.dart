import 'package:flutter/material.dart';
import 'package:volumearea/area/area.dart';
import 'package:volumearea/volume/volume.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    routes: {
      '/volume' : (context) => Volume(),
      '/services.area' : (context) => Area(),
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
                  Navigator.pushNamed(context, '/services.area');
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
