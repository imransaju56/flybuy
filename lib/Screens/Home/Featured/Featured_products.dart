import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/screens/home/Featured/Best_seller_tag.dart';
import 'package:flybuy_ecommerce_project/screens/home/Featured/Product_image.dart';
import 'package:flybuy_ecommerce_project/screens/home/Featured/discount.dart';
import 'package:flybuy_ecommerce_project/screens/home/Featured/product_card.dart';
import 'package:flybuy_ecommerce_project/screens/home/Featured/product_details.dart';

class featured extends StatefulWidget {
  @override
  _featuredState createState() => _featuredState();
}

class _featuredState extends State<featured> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
              ' Featured Products',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),


        ],
      ),
    );
  }
}
