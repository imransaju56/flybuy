import 'package:flutter/material.dart';

class discount extends StatefulWidget {
  @override
  _discountState createState() => _discountState();
}

class _discountState extends State<discount> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  SizedBox(
      height: size.height * 0.022,
      width: size.width * 0.09,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.deepOrange[500],
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(4.0),
              topLeft: Radius.circular(4.0)),
        ),
        child: Center(
          child: Text(
            '-25%',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
            ),
          ),
        ),
      ),
    );
  }
}