import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/Constants/colors.dart';
import 'package:flybuy_ecommerce_project/DataModel/cart_model.dart';
import 'package:flybuy_ecommerce_project/Screens/Buttons/AppBar.dart';
import 'package:flybuy_ecommerce_project/Screens/Cart/components/cart_card.dart';
import 'package:flybuy_ecommerce_project/constants/SizeConfig.dart';
import 'package:flybuy_ecommerce_project/screens/cart/components/total_products_amount.dart';
import 'package:provider/provider.dart';

class Mycart extends StatefulWidget {
  @override
  _MycartState createState() => _MycartState();
  static const routename = '/Mycart';
}

class _MycartState extends State<Mycart> {
  @override
  Widget build(BuildContext context) {
    var cart = Provider.of<Cart>(context);
    Sizeconfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Cart',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(children: [
          total_product_amount(),
          SizedBox(
            height: Sizeconfig.blockSizeVertical * 2,
          ),
          cart_card(),
        ]),
      ),
    );
  }
}