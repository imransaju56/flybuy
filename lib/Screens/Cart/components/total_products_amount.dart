import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/Constants/colors.dart';
import 'package:flybuy_ecommerce_project/DataModel/cart_model.dart';
import 'package:flybuy_ecommerce_project/constants/SizeConfig.dart';
import 'package:provider/provider.dart';

class total_product_amount extends StatefulWidget {
  @override
  _total_product_amountState createState() => _total_product_amountState();
}

class _total_product_amountState extends State<total_product_amount> {
  @override
  Widget build(BuildContext context) {
    var cart=Provider.of<Cart>(context);
    Sizeconfig().init(context);
    return Card(
      color: theme_color,

      elevation: 0.5,
      child: Row(
        children: [
          SizedBox(
            width: Sizeconfig.blockSizeHorizontal * 10,
          ),
          Column(
            children: [
              SizedBox(
                height: Sizeconfig.blockSizeVertical * 4.5,
              ),
              Text(
                '${cart.itemCount}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: Sizeconfig.blockSizeVertical * 1,
              ),
              Text(
                'Total Products',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: Sizeconfig.blockSizeVertical * 4.5,
              ),
            ],
          ),
          Spacer(),
          Column(
            children: [
              SizedBox(
                height: Sizeconfig.blockSizeVertical * 4.5,
              ),
              Text(
                'ট ${cart.totalAmount.toStringAsFixed(2)}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: Sizeconfig.blockSizeVertical * 1,
              ),
              Text(
                'Total Amount',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: Sizeconfig.blockSizeVertical * 4.5,
              ),
            ],
          ),
          SizedBox(
            width: Sizeconfig.blockSizeHorizontal * 10,
          ),
        ],
      ),
    );
  }
}
