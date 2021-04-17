import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/constants/SizeConfig.dart';
import 'package:flybuy_ecommerce_project/constants/colors.dart';

class product_details_section extends StatefulWidget {
  @override
  _product_details_sectionState createState() =>
      _product_details_sectionState();
}

class _product_details_sectionState extends State<product_details_section> {
  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
      child: SizedBox(
        height: Sizeconfig.blockSizeVertical * 4,
        width: Sizeconfig.blockSizeHorizontal * 20,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: theme_color,
          onPressed: () {},
          child: Text(
            'Details',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}
