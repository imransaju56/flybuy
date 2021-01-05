import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/constants/SizeConfig.dart';
import 'package:flybuy_ecommerce_project/screens/cart/components/cart_card_contents/card_contents_text.dart';
import 'package:flybuy_ecommerce_project/screens/cart/components/cart_card_contents/card_contents_text.dart';
import 'package:flybuy_ecommerce_project/screens/cart/components/cart_card_contents/update_button.dart';


class cart_card extends StatefulWidget {
  @override
  _cart_cardState createState() => _cart_cardState();
}

class _cart_cardState extends State<cart_card> {
  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);
    return Container(
      height: Sizeconfig.blockSizeVertical*16,
      width: Sizeconfig.blockSizeHorizontal*90,

      decoration: BoxDecoration(
        color:Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black38.withOpacity(0.05),
            blurRadius: 15.0,

          ),

        ],


      ),
      child: Row(
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/demo_pic.png'),
          ),

          SizedBox(
            width: Sizeconfig.blockSizeHorizontal*2,
          ),

          card_content_details(),








        ],

      ),
    );
  }
}
