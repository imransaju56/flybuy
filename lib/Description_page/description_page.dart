import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/Description_page/components/Bottom_nav.dart';
import 'package:flybuy_ecommerce_project/Description_page/components/Details_and_review_section/details_description.dart';
import 'package:flybuy_ecommerce_project/Description_page/components/Details_and_review_section/product_details_section.dart';
import 'package:flybuy_ecommerce_project/Description_page/components/available_colors.dart';
import 'package:flybuy_ecommerce_project/Description_page/components/available_sizes.dart';
import 'package:flybuy_ecommerce_project/Description_page/components/image_slider.dart';
import 'package:flybuy_ecommerce_project/Description_page/components/price%20with%20review_button.dart';
import 'package:flybuy_ecommerce_project/Description_page/components/product_title.dart';
import 'package:flybuy_ecommerce_project/Description_page/components/review_section.dart';
import 'file:///G:/Installedfiles/Androidstudio/flutterprojects/flybuy_ecommerce_project/lib/Description_page/components/appbar.dart';
import 'package:flybuy_ecommerce_project/constants/SizeConfig.dart';
import 'package:flybuy_ecommerce_project/constants/colors.dart';
import 'package:flybuy_ecommerce_project/screens/home/Featured/discount.dart';

class description extends StatefulWidget {
  @override
  _descriptionState createState() => _descriptionState();

  String title, image, offer;
  num price, discount;

  description({this.title, this.image, this.price, this.discount, this.offer});
}

class _descriptionState extends State<description> {
  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          SizedBox(
            height: Sizeconfig.blockSizeVertical * 6,
            width: Sizeconfig.blockSizeHorizontal * 50,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              ),
              onPressed: () {},
              child: Text(
                'Add to Cart',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 12,
                ),
              ),
            ),
          ),
          SizedBox(
            height: Sizeconfig.blockSizeVertical * 6,
            width: Sizeconfig.blockSizeHorizontal * 50,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              ),
              color: Colors.blue,
              onPressed: () {},
              child: Text(
                'Buy Now',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
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
                  child: image_des(
                    image: widget.image,
                  ),
                ),
                SizedBox(
                  height: Sizeconfig.blockSizeVertical * 4,
                ),
                title_and_like(
                  title: widget.title,
                ),
                SizedBox(
                  height: Sizeconfig.blockSizeVertical * 1.5,
                ),
                price_with_review(
                  price: widget.price,
                  discount: widget.discount,
                ),
                SizedBox(
                  height: Sizeconfig.blockSizeVertical * 1.5,
                ),
                widget.offer.isNotEmpty
                    ? Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
                            child: Text(
                              "${widget.offer}",
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
                        ],
                      )
                    : SizedBox(),
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
