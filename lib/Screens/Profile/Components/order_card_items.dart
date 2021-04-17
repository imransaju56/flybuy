import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/constants/colors.dart';

class OrderCardItems extends StatelessWidget {
  final String quantity;
  final String quantitytypes;

  OrderCardItems({this.quantity,this.quantitytypes});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Text(quantity,),
              SizedBox(height: 8,),
              Text(quantitytypes,style: TextStyle(
                color: theme_color,
                fontWeight: FontWeight.w600,

              ),),
            ],
          ),
        ),

      ],
    );
  }
}
