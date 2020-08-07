import 'package:flutter/material.dart';


class square extends StatefulWidget {
  @override
  _squareState createState() => _squareState();
}

class _squareState extends State<square> {
  double a = 0.0;
  double answer = 0.0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Square'),
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
                      'assets/square.png',
                      height: 150,
                      width: 150,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('square')
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

                        answer = a*a;
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
