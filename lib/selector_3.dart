import 'package:flutter/material.dart';

class Selector extends StatefulWidget {
  String title, item1, item2, item3;
  String route1, route2, route3;
  Selector({this.title, this.item1, this.item2, this.item3});
  @override
  _SelectorState createState() => _SelectorState();
}

class _SelectorState extends State<Selector> {
  String dropdownValue = "";
  int num = 1;
  @override
  void initState() {
    super.initState();
    dropdownValue = widget.item1;
    num = 1;
    widget.route1 = "${widget.title}1";
    widget.route2 = "${widget.title}2";
    widget.route3 = "${widget.title}3";
  }
  @override
  Widget build(BuildContext context) {
    String item1 = widget.item1;
    String item2 = widget.item2;
    String item3 = widget.item3;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/${widget.title}_$num.png'),
            DropdownButton<String>(
              value: dropdownValue,
              items: [
                DropdownMenuItem<String>(
                  child: Text(item1),
                  value: item1,
                ),
                DropdownMenuItem<String>(
                  child: Text(item2),
                  value: item2,
                ),
                DropdownMenuItem<String>(
                  child: Text(item3),
                  value: item3,
                ),
              ],
              onChanged: (String data) {
                setState(() {
                  dropdownValue = data;
                  print(data);
                  print("${widget.route1}, ${widget.route2}, ${widget.route3}");
                  if(data == item1){
                    num = 1;
                    Navigator.pushNamed(context, widget.route1);
                  }
                  if(data == item2) {
                    num = 2;
                    Navigator.pushNamed(context, widget.route2);
                  }
                  if(data == item3){
                    num = 3;
                    Navigator.pushNamed(context, widget.route3);
                  }
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
