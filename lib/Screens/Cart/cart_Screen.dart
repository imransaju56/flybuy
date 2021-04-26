import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/Screens/Buttons/AppBar.dart';
import 'package:flybuy_ecommerce_project/constants/SizeConfig.dart';
import 'package:flybuy_ecommerce_project/screens/cart/components/cart_card.dart';
import 'package:flybuy_ecommerce_project/screens/cart/components/total_products_amount.dart';

class Mycart extends StatefulWidget {
  @override
  _MycartState createState() => _MycartState();
  static const routename='/Mycart';
}

class _MycartState extends State<Mycart> {
  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            AppbarCustom(
              title: 'My Cart',
            ),

            total_product_amount(),
            SizedBox(
              height: Sizeconfig.blockSizeVertical * 2,
            ),

            //for(int i=0;i<3;i++)
            cart_card()
          ],
        ),
      ),
    );
  }
}
