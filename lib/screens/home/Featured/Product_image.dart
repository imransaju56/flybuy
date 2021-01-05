import 'package:flutter/material.dart';

class product_image extends StatefulWidget {
  @override
  _product_imageState createState() => _product_imageState();
}

class _product_imageState extends State<product_image> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child:
        Image.asset('assets/images/demo_pic.png'));
  }
}
