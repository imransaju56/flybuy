import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/screens/home/Featured/discount.dart';

class product_details extends StatefulWidget {
  @override
  _product_detailsState createState() => _product_detailsState();
}

class _product_detailsState extends State<product_details> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [


        Text(
          'Under Armour Men\'s',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w800,
            color: Colors.black87,
          ),
        ),
        Text(
          'Sleeve T-Shirt',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w800,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          '\$34.00',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
