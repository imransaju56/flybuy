import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/screens/home/Featured/discount.dart';

class product_details extends StatefulWidget {

   product_details({
    this.title,
    this.price,
    this.subtitle,
     this.discount,

});
  String title,subtitle;
  num price,discount;

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
          widget.title,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w800,
            color: Colors.black87,
          ),
        ),

        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Text(
              'TK. ${widget.price}',
              style: TextStyle(
                fontSize: 12,
              ),
            ),

            SizedBox(width: 5,),

            Text(
              '-${widget.discount}%',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

