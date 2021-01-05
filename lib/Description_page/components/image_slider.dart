import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/constants/SizeConfig.dart';
import 'package:flybuy_ecommerce_project/constants/colors.dart';

class image_des extends StatefulWidget {
  @override
  _image_desState createState() => _image_desState();
}

class _image_desState extends State<image_des> {
  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);
    return Column(
      children: [
        Container(
          child: Image.asset(
            'assets/images/hoodie.png',
            height: Sizeconfig.blockSizeHorizontal * 75,
            width: Sizeconfig.blockSizeVertical * 75,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  shape: BoxShape.circle),
            ),
            SizedBox(
              width: Sizeconfig.blockSizeHorizontal * 2,
            ),
            Container(
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                  color: loadingpage_color,
                  shape: BoxShape.circle),
            ),
            SizedBox(
              width: Sizeconfig.blockSizeHorizontal * 2,
            ),
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  shape: BoxShape.circle),
            ),
          ],
        ),
      ],
    );
  }
}
