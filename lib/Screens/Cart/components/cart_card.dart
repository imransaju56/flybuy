import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/constants/SizeConfig.dart';
import 'package:flybuy_ecommerce_project/screens/home/Featured/Product_image.dart';

class cart_card extends StatefulWidget {
  @override
  _cart_cardState createState() => _cart_cardState();
}

class _cart_cardState extends State<cart_card> {
  int id;

  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);
    return Dismissible(
      key: ValueKey(id),
      direction: DismissDirection.endToStart,
      background: Container(
        alignment: Alignment.centerRight,
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(15),
        color: Theme.of(context).errorColor,
        child: Icon(
          Icons.delete,
          color: Colors.white,
        ),
      ),
      child: Card(
        elevation: 0.5,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/demo_pic.png',
                scale: 1.5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Under Armour Mens\'s ColdGear Armour \nMock Long Sleeve T-Shirt',
                    overflow: TextOverflow.visible,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'BDT 140',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Only Available in stock! delivery in 2 days',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.green[600],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
