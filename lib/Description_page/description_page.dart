import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/Description_page/components/Bottom_nav.dart';
import 'package:flybuy_ecommerce_project/Description_page/components/Details_and_review_section/details_description.dart';
import 'file:///G:/Installedfiles/Androidstudio/flutterprojects/flybuy_ecommerce_project/lib/Description_page/components/price%20with%20review_button.dart';
import 'package:flybuy_ecommerce_project/Description_page/components/Details_and_review_section/product_details_section.dart';
import 'package:flybuy_ecommerce_project/Description_page/components/available_colors.dart';
import 'package:flybuy_ecommerce_project/Description_page/components/available_sizes.dart';
import 'package:flybuy_ecommerce_project/Description_page/components/image_slider.dart';
import 'package:flybuy_ecommerce_project/Description_page/components/product_title.dart';
import 'package:flybuy_ecommerce_project/Description_page/components/review_section.dart';
import 'file:///G:/Installedfiles/Androidstudio/flutterprojects/flybuy_ecommerce_project/lib/Description_page/components/appbar.dart';
import 'package:flybuy_ecommerce_project/constants/SizeConfig.dart';
import 'package:flybuy_ecommerce_project/constants/colors.dart';

class description extends StatefulWidget {
  @override
  _descriptionState createState() => _descriptionState();
}

class _descriptionState extends State<description> {
  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);
    return Scaffold(
      bottomNavigationBar: Bottom_nav(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                des_Appbar(),
                SizedBox(
                  height: Sizeconfig.blockSizeVertical * 1,
                ),
                Container(
                  height: Sizeconfig.blockSizeVertical * 42,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38.withOpacity(0.05),
                        blurRadius: 5.0,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: image_des(),
                ),
                SizedBox(
                  height: Sizeconfig.blockSizeVertical * 4,
                ),
                title_and_like(),
                SizedBox(
                  height: Sizeconfig.blockSizeVertical * 1.5,
                ),
                price_with_review(),
                SizedBox(
                  height: Sizeconfig.blockSizeVertical * 1.5,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
                  child: Text(
                    "Only 3 available in stock! delivery in 2 days.",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.green[600],
                    ),
                  ),
                ),
                SizedBox(
                  height: Sizeconfig.blockSizeVertical * 1.5,
                ),
                available_colors(),
                SizedBox(
                  height: Sizeconfig.blockSizeVertical * 1.5,
                ),
                available_sizes(),
                SizedBox(
                  height: Sizeconfig.blockSizeVertical * 2.0,
                ),
                Row(
                  children: [
                    product_details_section(),
                    SizedBox(
                      width: Sizeconfig.blockSizeHorizontal * 2,
                    ),
                    review_section(),
                  ],
                ),
                SizedBox(
                  height: Sizeconfig.blockSizeVertical * 1.5,
                ),
                Details_view_des(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
