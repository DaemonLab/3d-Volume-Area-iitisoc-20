import 'package:flutter/material.dart';

class OutputScreenThree extends StatefulWidget {
  String variableName1, variableName2,variableName3,heading;

  Function(double, double, double) formula;
  OutputScreenThree({this.variableName1, this.variableName2, this.variableName3, this.heading, this.formula});
  @override
  _OutputScreenThreeState createState() => _OutputScreenThreeState();
}

class _OutputScreenThreeState extends State<OutputScreenThree> {
  double variableValue1 = 0.0;
  double variableValue2 = 0.0;
  double variableValue3 = 0.0;
  double answer = 0.0;
  @override
  Widget build(BuildContext context) {
    String heading = widget.heading;
    String variableName1 = widget.variableName1;
    String variableName2 = widget.variableName2;
    String variableName3 = widget.variableName3;
    Function (double, double, double) formula = widget.formula;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('${heading[0].toUpperCase()}${heading.substring(1)}'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/${heading}_1.png',
                        height: 150,
                        width: 150,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text('${heading[0].toUpperCase()}${heading.substring(1)}')
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
                  Text('$variableName1 = ', style: TextStyle(fontSize: 28),),
                  SizedBox(width: 10,),
                  Expanded(
                    child: TextField(
                      onChanged: (text){
                        setState(() {
                          if(text.length == 0)
                            text = "0";
                          variableValue1 = double.parse(text);

                          answer = formula(variableValue1,variableValue2,variableValue3);
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
                  Text('$variableName2 = ', style: TextStyle(fontSize: 28),),
                  SizedBox(width: 10,),
                  Expanded(
                    child: TextField(
                      onChanged: (text){
                        setState(() {
                          if(text.length == 0)
                            text = "0";
                          variableValue2 = double.parse(text);

                          answer = formula(variableValue1,variableValue2,variableValue3);
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
                  Text('$variableName3 = ', style: TextStyle(fontSize: 28),),
                  SizedBox(width: 10,),
                  Expanded(
                    child: TextField(
                      onChanged: (text){
                        setState(() {
                          if(text.length == 0)
                            text = "0";
                          variableValue3 = double.parse(text);

                          answer = formula(variableValue1,variableValue2,variableValue3);
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
      ),
    );
  }
}
