import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/constants/SizeConfig.dart';

class item_button extends StatefulWidget {
  @override
  _item_buttonState createState() => _item_buttonState();
}

class _item_buttonState extends State<item_button> {
  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);
    return Container(
      height: Sizeconfig.blockSizeVertical * 4,
      width: Sizeconfig.blockSizeHorizontal * 20,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            color: Colors.black38.withOpacity(0.05),
          ),
        ],
      ),
      child: Row(
        children: [
          SizedBox(
            width: Sizeconfig.blockSizeHorizontal * 2,
          ),
          Text('-',style: TextStyle(
            fontSize: 20,
            color: Colors.black38.withOpacity(0.7),

          ),),


          Spacer(),
          Text('1',style: TextStyle(
            fontSize: 15,
            color: Colors.black38.withOpacity(0.7),
          ),),


          Spacer(),
          Text('+',style: TextStyle(
            fontSize: 16,
            color: Colors.black38.withOpacity(0.7),
          ),),
          SizedBox(
            width: Sizeconfig.blockSizeHorizontal * 2,
          ),
        ],
      ),
    );
  }
}
