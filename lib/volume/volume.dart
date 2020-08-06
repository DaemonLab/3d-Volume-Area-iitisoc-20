import 'package:flutter/material.dart';

class Volume extends StatefulWidget {
  @override
  _VolumeState createState() => _VolumeState();
}

class _VolumeState extends State<Volume> {

  Widget customCard(String image) {
    // image variable stores the location of the image of the object. ex. assets/rectangle.dart
    String shape = image.substring(image.indexOf('/')+1, image.length-4);

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
                      customCard('assets/box.png'),
                      customCard('assets/capsule.png'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customCard('assets/cone.png'),
                      customCard('assets/cube.png'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customCard('assets/cylinder.png'),
                      customCard('assets/cylinder-hollow.png'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customCard('assets/ellipsoid.png'),
                      customCard('assets/frustum.png'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customCard('assets/hemisphere.png'),
                      customCard('assets/pyramid.png'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customCard('assets/pyramid-truncated.png'),
                      customCard('assets/sphere.png'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      customCard('assets/spherical-cap.png'),
                      customCard('assets/triangular-prism.png'),
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
