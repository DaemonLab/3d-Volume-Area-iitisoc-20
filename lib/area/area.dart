import 'package:flutter/material.dart';

class Area extends StatefulWidget {
  @override
  _AreaState createState() => _AreaState();
}

class _AreaState extends State<Area> {
  
  
  Widget customCard(String image) {
    // image variable stores the location of the image of the object. ex. assets/rectangle_1.dart
    String shape = image.substring(image.indexOf('/')+1, image.length-6);
    //image += "_1";

    // using InkWell to make tap able cards
    return InkWell(
      onTap: () {
        print(image);
        Navigator.pushNamed(context, '/${shape}');
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
                      customCard('assets/annulus_1.png'),
                      customCard('assets/circle_1.png'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customCard('assets/ellipse_1.png'),
                      customCard('assets/hexagon_1.png'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customCard('assets/kite_1.png'),
                      customCard('assets/octagon_1.png'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customCard('assets/parallelogram_1.png'),
                      customCard('assets/pentagon_1.png'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customCard('assets/polygon_1.png'),
                      customCard('assets/quadrilateral_1.png'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customCard('assets/rectangle_1.png'),
                      customCard('assets/rhombus_1.png'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customCard('assets/sector_1.png'),
                      customCard('assets/semicircle_1.png'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customCard('assets/trapezoid_1.png'),
                      customCard('assets/square_1.png'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customCard('assets/triangle_1.png'),
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

