import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/screens/home/Featured/Best_seller_tag.dart';
import 'package:flybuy_ecommerce_project/screens/home/Featured/Product_image.dart';
import 'package:flybuy_ecommerce_project/screens/home/Featured/discount.dart';
import 'package:flybuy_ecommerce_project/screens/home/Featured/product_details.dart';

class product_card extends StatefulWidget {
  @override
  _product_cardState createState() => _product_cardState();
}

class _product_cardState extends State<product_card> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [

          Container(
            height: size.height * 0.3,
            width: size.width * 0.4,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black38.withOpacity(0.05),
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  top: size.width*0.02,
                  left: 0,
                  child: best_seller_tag(),
                ),
                Positioned(
                  top: size.width*-0.1,
                  right: size.width*0.05,
                  left: size.width*0.05,
                  bottom: size.width*0.01,
                  child: product_image(),
                ),
                Stack(
                  children: [
                    Positioned(
                      top: size.width*0.45,
                      right: size.width*0.1,
                      left: size.width*0.018,
                      child: product_details(),
                    ),
                  ],
                ),
                Positioned(
                  top: size.width*0.45,
                  right: size.width*0.02,
                  bottom: size.width*0.11,

                  child: Icon(
                    Icons.favorite,
                    size: size.height*0.02,
                    color: Colors.blue,
                  ),
                ),
                Positioned(

                  top: size.width*0.51,
                  right: 0,
                  bottom: size.width*0.04,
                  child: discount(),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
