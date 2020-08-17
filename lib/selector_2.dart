import 'package:flutter/material.dart';

class Selector extends StatefulWidget {
  String title, text1, text2, route1, route2;
  Selector({this.title, this.text1, this.text2, this.route1, this.route2});
  @override
  _SelectorState createState() => _SelectorState();
}

class Dropdown extends StatefulWidget {
  String item1, item2, route1, route2;
  Dropdown({this.item1, this.item2, this.route1, this.route2});
  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String dropdownValue;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dropdownValue = widget.item1;
  }
  @override
  Widget build(BuildContext context) {
    String item1 = widget.item1;
    String item2 = widget.item2;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
              ],
              onChanged: (String data) {
                setState(() {
                  dropdownValue = data;
                  print(data);
                  print(item1);
                  print(widget.route1);
                  print(widget.route2);
                  if(data == item1)
                    Navigator.pushNamed(context, widget.route1);
                  else
                    Navigator.pushNamed(context, widget.route2);
                });
              },
            )
          ],
        ),
      ),
    );
  }
}

class _SelectorState extends State<Selector> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Dropdown(item1: widget.text1, item2: widget.text2, route2: widget.route2, route1: widget.route1,))
        ],
      ),
    );
  }
}
