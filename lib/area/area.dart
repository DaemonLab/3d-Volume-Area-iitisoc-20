import 'package:flutter/material.dart';

class Area extends StatefulWidget {
  @override
  _AreaState createState() => _AreaState();
}

class _AreaState extends State<Area> {
  
  
  Widget customCard(String image) {
    // image variable stores the location of the image of the object. ex. assets/rectangle.dart
    String shape = image.substring(image.indexOf('/')+1, image.length-4);

    // using InkWell to make tap able cards
    return InkWell(
      onTap: () {
        print(image);
        //Navigator.pushNamed(context, '/${shape}');
      },
      child: Card(
        child: Column(
          children: [
            Image.asset(image, height: 150, width: 150,),
            SizedBox(height: 10,),
            Text(shape)
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
          // ListView to enable vertical scrolling
          child: ListView(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customCard('assets/annulus.png'),
                      customCard('assets/circle.png'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customCard('assets/ellipse.png'),
                      customCard('assets/hexagon.png'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customCard('assets/kite.png'),
                      customCard('assets/octagon.png'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customCard('assets/parallelogram.png'),
                      customCard('assets/pentagon.png'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customCard('assets/polygon.png'),
                      customCard('assets/quadrilateral.png'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customCard('assets/rectangle.png'),
                      customCard('assets/rhombus.png'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customCard('assets/sector.png'),
                      customCard('assets/semicircle.png'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customCard('assets/trapezoid.png'),
                      customCard('assets/square.png'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customCard('assets/triangle.png'),
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

