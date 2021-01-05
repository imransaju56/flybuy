import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/constants/SizeConfig.dart';
import 'package:flybuy_ecommerce_project/screens/cart/components/cart_card.dart';
import 'package:flybuy_ecommerce_project/screens/cart/components/cart_card_contents/bottom_nav_cart.dart';
import 'package:flybuy_ecommerce_project/screens/cart/components/cart_navbar.dart';
import 'package:flybuy_ecommerce_project/screens/cart/components/total_products_amount.dart';

class Mycart extends StatefulWidget {
  @override
  _MycartState createState() => _MycartState();
}

class _MycartState extends State<Mycart> {
  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);
    return Scaffold(
      bottomNavigationBar: cart_nav(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            cart_appbar(),


            total_product_amount(),
            SizedBox(
              height: Sizeconfig.blockSizeVertical * 2,
            ),

            cart_card(),

            SizedBox(
              height: Sizeconfig.blockSizeVertical * 2,
            ),
            cart_card(),

            SizedBox(
              height: Sizeconfig.blockSizeVertical * 2,
            ),
            cart_card(),

          ],
        ),
      ),
    );
  }
}
