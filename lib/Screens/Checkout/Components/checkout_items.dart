import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/Screens/Buttons/AppBar.dart';
import 'package:flybuy_ecommerce_project/Screens/Cart/components/cart_card.dart';

class Check_items extends StatefulWidget {
  @override
  _Check_itemsState createState() => _Check_itemsState();
}

class _Check_itemsState extends State<Check_items> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Imran Hasan',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                      '395/1, Terokhadia Poschim Para, Rajpara,Rajshahi, \nRajshahi Canttonment, Rajshahi, Rajshahi '),
                ],
              ),
              Spacer(),
              Icon(
                Icons.edit,
                color: Colors.blue,
              ),
            ],
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Billing Address',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.check_box,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('Same as delivery address'),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Items',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          for (int i = 0; i < 2; i++) cart_card(),
          SizedBox(
            height: 10,
          ),
          Text(
            'Estimated Day of Delivery',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Arrival Between 7-10 Mar',
            style: TextStyle(
              color: Colors.green[600],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Subtotal'),
                      Spacer(),
                      Text(
                        '\$160',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('Discount'),
                      Spacer(),
                      Text(
                        '5%',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('Shipping'),
                      Spacer(),
                      Text(
                        '\$10',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      Text(
                        '\$162.00',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
