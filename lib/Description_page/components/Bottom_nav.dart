import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/constants/SizeConfig.dart';
import 'package:flybuy_ecommerce_project/constants/colors.dart';

class Bottom_nav extends StatefulWidget {
  @override
  _Bottom_navState createState() => _Bottom_navState();
}

class _Bottom_navState extends State<Bottom_nav> {
  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);
    return Row(
      children: [
        SizedBox(
          height: Sizeconfig.blockSizeVertical * 6,
          width: Sizeconfig.blockSizeHorizontal * 50,
          child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),
            onPressed: () {},
            child: Text(
              'Add to Cart',
              style: TextStyle(
                color: Colors.black.withOpacity(0.7),
                fontSize: 12,
              ),
            ),
          ),
        ),
        SizedBox(
          height: Sizeconfig.blockSizeVertical * 6,
          width: Sizeconfig.blockSizeHorizontal * 50,
          child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),
            color: Colors.blue,
            onPressed: () {},
            child: Text(
              'Buy Now',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
