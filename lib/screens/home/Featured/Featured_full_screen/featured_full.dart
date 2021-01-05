import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/screens/home/Featured/Featured_full_screen/components/appbar.dart';
import 'package:flybuy_ecommerce_project/screens/home/Featured/Featured_full_screen/components/card/cards.dart';
import 'package:flybuy_ecommerce_project/screens/home/Featured/Product_image.dart';

class Featured_full extends StatefulWidget {
  @override
  _Featured_fullState createState() => _Featured_fullState();
}

class _Featured_fullState extends State<Featured_full> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Appbar(),
              SizedBox(
                height: 10,
              ),
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
              featured_cards(),
            ],
          ),
        ),
      ),
    );
  }
}
