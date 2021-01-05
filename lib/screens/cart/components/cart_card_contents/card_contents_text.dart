import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/constants/SizeConfig.dart';
import 'package:flybuy_ecommerce_project/screens/cart/components/cart_card_contents/item_button.dart';
import 'package:flybuy_ecommerce_project/screens/cart/components/cart_card_contents/update_button.dart';

class card_content_details extends StatefulWidget {
  @override
  _card_content_detailsState createState() => _card_content_detailsState();
}

class _card_content_detailsState extends State<card_content_details> {
  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Spacer(),

        Text(
          'Under Armour Men\'s ColdGear Armour ',
          style: TextStyle(
            fontSize: 15,
            color: Colors.black.withOpacity(0.7),
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: Sizeconfig.blockSizeVertical*0.5,
        ),

        Text(
          'Mock Long Sleeve T-Shirt',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Colors.black.withOpacity(0.7),
          ),

        ),
        SizedBox(
          height: Sizeconfig.blockSizeVertical*0.5,
        ),

        Text(
          'BDT 140',
          style: TextStyle(
            fontSize: 15,
            color: Colors.black.withOpacity(0.7),
          ),),

        SizedBox(
          height: Sizeconfig.blockSizeVertical*0.5,
        ),
        Row(
          children: [

            item_button(),
            SizedBox(
              width: Sizeconfig.blockSizeHorizontal * 2,
            ),
            update_button(),


          ],

        ),
        Spacer(),



      ],
    );
  }
}
