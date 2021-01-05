import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/constants/SizeConfig.dart';
import 'package:flybuy_ecommerce_project/constants/colors.dart';


class available_sizes extends StatefulWidget {
  @override
  _available_sizesState createState() => _available_sizesState();
}

class _available_sizesState extends State<available_sizes> {
  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
          child: Text(
            "Size Available",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black.withOpacity(0.7),
            ),
          ),
        ),
        SizedBox(
          width: Sizeconfig.blockSizeHorizontal * 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 200,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black.withOpacity(0.3),
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: Sizeconfig.blockSizeHorizontal * 7,
                  ),
                  Text(
                    "S",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: loadingpage_color,
                    ),
                  ),
                  SizedBox(
                    width: Sizeconfig.blockSizeHorizontal * 8,
                  ),
                  Text(
                    "M",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: loadingpage_color,
                    ),
                  ),
                  SizedBox(
                    width: Sizeconfig.blockSizeHorizontal * 8,
                  ),
                  Text(
                    "L",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: loadingpage_color,
                    ),
                  ),
                  SizedBox(
                    width: Sizeconfig.blockSizeHorizontal * 8,
                  ),
                  Text(
                    "XL",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: loadingpage_color,
                    ),
                  ),
                  SizedBox(
                    width: Sizeconfig.blockSizeHorizontal * 7,
                  ),
                ],
              ),
            ),

            SizedBox(
              height: Sizeconfig.blockSizeVertical * 1.5,
            ),
            Text('(View Size Chart)'),
          ],
        ),
      ],
    );
  }
}
