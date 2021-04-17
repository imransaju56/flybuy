import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/constants/SizeConfig.dart';

class total_product_amount extends StatefulWidget {
  @override
  _total_product_amountState createState() => _total_product_amountState();
}

class _total_product_amountState extends State<total_product_amount> {
  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);
    return Card(

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
                '11',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: Sizeconfig.blockSizeVertical * 1,
              ),
              Text(
                'Total Products',
                style: TextStyle(
                  color: Colors.blue,
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
                'BDT 220',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: Sizeconfig.blockSizeVertical * 1,
              ),
              Text(
                'Total Amount',
                style: TextStyle(
                  color: Colors.blue,
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
