import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/constants/SizeConfig.dart';
import 'package:flybuy_ecommerce_project/constants/colors.dart';

class cart_nav extends StatefulWidget {
  @override
  _cart_navState createState() => _cart_navState();
}

class _cart_navState extends State<cart_nav> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sizeconfig.blockSizeVertical * 8,
      width: Sizeconfig.blockSizeHorizontal * 50,
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
        ),
        color: Colors.blue,
        onPressed: () {},
        child: Text(
          'Proceed to Checkout',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
