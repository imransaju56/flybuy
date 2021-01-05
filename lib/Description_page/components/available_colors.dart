import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/constants/SizeConfig.dart';

class available_colors extends StatefulWidget {
  @override
  _available_colorsState createState() => _available_colorsState();
}

class _available_colorsState extends State<available_colors> {
  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
          child: Text(
            "Available Colors",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.7),
            ),
          ),
        ),
        SizedBox(
          width: Sizeconfig.blockSizeHorizontal * 4,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                SizedBox(
                  width: Sizeconfig.blockSizeHorizontal * 4,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                SizedBox(
                  width: Sizeconfig.blockSizeHorizontal * 4,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                SizedBox(
                  width: Sizeconfig.blockSizeHorizontal * 4,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                SizedBox(
                  width: Sizeconfig.blockSizeHorizontal * 4,
                ),
              ],
            ),
            SizedBox(
              height: Sizeconfig.blockSizeVertical * 1.5,
            ),
            Text('Black/Blue/Navy/Charcoal/Red'),
          ],
        ),
      ],
    );
  }
}
