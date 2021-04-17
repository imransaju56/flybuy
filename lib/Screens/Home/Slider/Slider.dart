import 'package:flutter/material.dart';

class slider extends StatefulWidget {
  @override
  _sliderState createState() => _sliderState();
}

class _sliderState extends State<slider> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Image(
        image: AssetImage('assets/images/HalloweenOffer.jpg'),
    ),
    );
  }
}
