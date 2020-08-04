import 'package:flutter/material.dart';

class square extends StatefulWidget {
  @override
  _squareState createState() => _squareState();
}

class _squareState extends State<square> {
  double inputByUser = 0.0;
  TextEditingController myController = new TextEditingController();
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Inputs'),
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
                    controller: myController,
                    keyboardType: TextInputType.numberWithOptions(
                        signed: false, decimal: true),
                  ),
                ),
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text('Calculate'),
                onPressed: (){
                  setState(() {
//                    if(myController.text == "" ) {
//                      inputByUser = 0.0;
//                      print('input null');
//                    }
//
//                    print('my controller text =${myController.text}');
                    try{
                      inputByUser = double.parse(myController.text);
                    }
                    catch(e){
                      inputByUser = 0;
                    }

                  });
                },
              ),
            ],
          ),

          SizedBox(height: 20,),
          // Result
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text((inputByUser*inputByUser).toString())
            ],
          ),
        ],
      ),
    );
  }
}
