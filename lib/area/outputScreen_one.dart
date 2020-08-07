import 'package:flutter/material.dart';
import "dart:math" show pi, sqrt;

class OutputScreenOne extends StatefulWidget {
  String variableName, heading;

  Function(double) formula;
  OutputScreenOne({this.variableName, this.heading, this.formula});
  @override
  _OutputScreenOneState createState() => _OutputScreenOneState();
}

class _OutputScreenOneState extends State<OutputScreenOne> {

  double variableValue = 0.0;
  double answer = 0.0;

  @override
  Widget build(BuildContext context) {
    String heading = widget.heading;
    String variableName = widget.variableName;
    Function (double) formula = widget.formula;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('${heading[0].toUpperCase()}${heading.substring(1)}'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/$heading.png',
                      height: 150,
                      width: 150,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('${heading[0].toUpperCase()}${heading.substring(1)}') // First letter capital
                  ],
                ),
                elevation: 0,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text('$variableName = ', style: TextStyle(fontSize: 28),),
                SizedBox(width: 10,),
                Expanded(
                  child: TextField(
                    onChanged: (text){
                      setState(() {
                        if(text.length == 0)
                          text = "0";
                        variableValue = double.parse(text);

                        answer = formula(variableValue);
                      });
                    },
                    keyboardType: TextInputType.numberWithOptions(
                        signed: false, decimal: true),
                  ),
                ),
              ],
            ),
          ),


          SizedBox(height: 20,),
          // Result
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(answer.toString())
            ],
          ),
        ],
      ),
    );
  }
}
