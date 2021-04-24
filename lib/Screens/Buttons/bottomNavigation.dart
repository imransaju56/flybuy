import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/constants/SizeConfig.dart';
import 'package:flybuy_ecommerce_project/constants/colors.dart';

class BottomNavigation extends StatelessWidget {
  String text;

  BottomNavigation({@required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      child: FlatButton(
        height: Sizeconfig.blockSizeVertical * 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
        ),
        color: theme_color,
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
