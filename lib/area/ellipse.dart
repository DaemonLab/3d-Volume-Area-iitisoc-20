import 'package:flutter/material.dart';
import "dart:math" show pi;

class ellipse extends StatefulWidget {
  @override
  _ellipseState createState() => _ellipseState();
}

class _ellipseState extends State<ellipse> {
  double a = 0.0;
  double b = 0.0;
  double answer = 0.0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Ellipse'),
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
                      'assets/ellipse.png',
                      height: 150,
                      width: 150,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Ellipse')
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
                Text('a = ', style: TextStyle(fontSize: 28),),
                SizedBox(width: 10,),
                Expanded(
                  child: TextField(
                    onChanged: (text){
                      setState(() {
                        if(text.length == 0)
                          text = "0";
                        a = double.parse(text);

                        answer = pi*a*b;
                        if(answer <= 0)
                          answer = 0.0;
                      });
                    },
                    keyboardType: TextInputType.numberWithOptions(
                        signed: false, decimal: true),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text('b = ', style: TextStyle(fontSize: 28),),
                SizedBox(width: 10,),
                Expanded(
                  child: TextField(
                    onChanged: (text){
                      setState(() {
                        if(text.length == 0)
                          text = "0";
                        b = double.parse(text);

                        answer = pi*a*b;
                        if(answer <= 0)
                          answer = 0.0;
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
