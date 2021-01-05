import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/constants/SizeConfig.dart';
import 'package:flybuy_ecommerce_project/constants/colors.dart';

class review_section extends StatefulWidget {
  @override
  _review_sectionState createState() => _review_sectionState();
}

class _review_sectionState extends State<review_section> {
  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 40.0, 0.0),
      child: SizedBox(
        height: Sizeconfig.blockSizeVertical * 4,
        width: Sizeconfig.blockSizeHorizontal * 20,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: loadingpage_color,
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          onPressed: () {},
          child: Text(
            'Reviews',
            style: TextStyle(
              color: Colors.black.withOpacity(0.7),
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}
