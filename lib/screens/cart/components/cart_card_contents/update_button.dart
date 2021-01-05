import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/constants/SizeConfig.dart';

class update_button extends StatefulWidget {
  @override
  _update_buttonState createState() => _update_buttonState();
}

class _update_buttonState extends State<update_button> {
  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);
    return Container(
      height: Sizeconfig.blockSizeVertical * 4,
      width: Sizeconfig.blockSizeHorizontal * 20,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            color: Colors.black38.withOpacity(0.05),
          ),
        ],
      ),

      child: Center(child: Text('Update',style: TextStyle(
        color: Colors.white,
        fontSize: 13,

      ),)),

    );
  }
}
