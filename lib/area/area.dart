import 'package:flutter/material.dart';

class Area extends StatefulWidget {
  @override
  _AreaState createState() => _AreaState();
}

class _AreaState extends State<Area> {
  
  
  Widget customCard(String image) {
    return InkWell(
      onTap: () {
        print(image);
        Navigator.pushNamed(context, '/area');
      },
      child: Card(
        child: Column(
          children: [
            Image.asset(image, height: 150, width: 150,),
            Text(image.substring(image.indexOf('/')+1, image.length-4))
          ],
        ),
        elevation: 0,

      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(2, 10, 2, 10),
          child: ListView(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customCard('assets/rectangle.png'),
                      customCard('assets/square.png'),
                    ],
                  ),

                ],
              ),
            ],
          ),
        ),
      ),

    );
  }
}

