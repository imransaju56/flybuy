import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flybuy_ecommerce_project/constants/colors.dart';

class Options extends StatelessWidget {
  final String optionName;
  final String svgName;
  // final String optiontype;

  Options({this.optionName, this.svgName,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              SvgPicture.asset(
                svgName,
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
        ),
      ],
    );
  }
}
