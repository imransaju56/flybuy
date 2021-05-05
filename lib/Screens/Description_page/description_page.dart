import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/DataModel/cart_model.dart';
import 'package:flybuy_ecommerce_project/Screens/Checkout/checkout_screen.dart';
import 'package:flybuy_ecommerce_project/Screens/Description_page/components/Details_and_review_section/details_description.dart';
import 'package:flybuy_ecommerce_project/Screens/Description_page/components/Details_and_review_section/product_details_section.dart';
import 'package:flybuy_ecommerce_project/Screens/Description_page/components/appbar.dart';
import 'package:flybuy_ecommerce_project/Screens/Description_page/components/available_colors.dart';
import 'package:flybuy_ecommerce_project/Screens/Description_page/components/available_sizes.dart';
import 'package:flybuy_ecommerce_project/Screens/Description_page/components/image_slider.dart';
import 'package:flybuy_ecommerce_project/Screens/Description_page/components/price%20with%20review_button.dart';
import 'package:flybuy_ecommerce_project/Screens/Description_page/components/product_title.dart';
import 'package:flybuy_ecommerce_project/Screens/Description_page/components/review_section.dart';
import 'package:flybuy_ecommerce_project/constants/SizeConfig.dart';
import 'package:provider/provider.dart';

class description extends StatefulWidget {
  @override
  _descriptionState createState() => _descriptionState();

  String productId, title, image, offer;
  num price, discount;

  description(
      {this.productId,
        this.title,
        this.image,
        this.price,
        this.discount,
        this.offer});

  static const routename = '/Description';
}

class _descriptionState extends State<description> {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context, listen: false);
    Sizeconfig().init(context);
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: Row(
        children: [
          SizedBox(
            height: Sizeconfig.blockSizeVertical * 6,
            width: Sizeconfig.blockSizeHorizontal * 50,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              ),
              onPressed: () {
                cart.addItems(
                    widget.productId, widget.image, widget.title, widget.price);

                print('items passed');
              },
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
              onPressed: () {
                cart.addcheckoutItems(
                    widget.productId, widget.image, widget.title, widget.price);

                Navigator.of(context)
                    .pushReplacementNamed(CheckoutScreen.routename);
              },
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