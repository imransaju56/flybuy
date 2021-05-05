import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flybuy_ecommerce_project/constants/colors.dart';

class Options extends StatelessWidget {
  final String optionName;
  final String svgName;
  final String optiontype;

  Options({this.optionName, this.svgName, this.optiontype});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            optiontype,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.black45,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Column(
                children: [
                  SvgPicture.asset(
                    svgName,
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                optionName,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Spacer(),
              Icon(
                Icons.keyboard_arrow_right,
                color: theme_color,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
