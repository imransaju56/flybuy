import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/constants/SizeConfig.dart';

class welcome_text extends StatefulWidget {
  @override
  _welcome_textState createState() => _welcome_textState();
}

class _welcome_textState extends State<welcome_text> {
  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to ',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 22,
                color:Colors.black38.withOpacity(0.7),

              ),
            ),
            Text(
              'Flybuy',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 22,
                color: Colors.black38.withOpacity(0.5),
              ),
            ),
          ],
        ),
        SizedBox(
          height: Sizeconfig.blockSizeVertical * 1,
        ),
        Text(
          'Explore Us',
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
