import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/screens/home/Featured/Featured_full_screen/components/card/featured_card_contents.dart';
import 'package:flybuy_ecommerce_project/screens/home/Featured/Product_image.dart';

class featured_cards extends StatefulWidget {
  @override
  _featured_cardsState createState() => _featured_cardsState();
}

class _featured_cardsState extends State<featured_cards> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        height: size.height * 0.2,
        width: size.width * 0.9,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black38.withOpacity(0.05),
              blurRadius: 5.0,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: product_image(image: 'assets/images/demo_pic.png',),
            ),
            SizedBox(
              width: 5,
            ),
            //product title

            featured_card_contents(),

          ],
        ),
      ),
    );
  }
}
