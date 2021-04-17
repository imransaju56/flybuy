import 'package:flutter/material.dart';

class featured_card_contents extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<featured_card_contents> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 35,
        ),
        Text(
          'Under Armour Men\'s ColdGear Armour Compression',
          style: TextStyle(
            fontSize: 11,
          ),
        ),

        Text(
          'Mock Long Sleeve T-Shirt',
          style: TextStyle(
            fontSize: 11,
          ),
        ),
        //product title
        SizedBox(
          height: 5,
        ),
//icons
        Row(
          children: [
            Icon(
              Icons.star,
              size: 15,
              color: Colors.orange,
            ),
            Icon(
              Icons.star,
              size: 15,
              color: Colors.orange,
            ),
            Icon(
              Icons.star,
              size: 15,
              color: Colors.orange,
            ),
            Icon(
              Icons.star,
              size: 15,
              color: Colors.orange,
            ),
            Icon(Icons.star, size: 15, color: Colors.grey[400]),
            SizedBox(
              height: 5,
            ),
            Text(
              '14,337',
              style: TextStyle(
                fontSize: 9,
              ),
            ),
          ],
        ),

//icons
        SizedBox(
          height: 5,
        ),
        //remaining text for prices and offers
        Row(
          children: [
            Text(
              '\$120.00',
              style: TextStyle(
                fontSize: 9,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              '\$20.00',
              style: TextStyle(
                fontSize: 9,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Only 7 left in stock- order soon.',
          style: TextStyle(
            fontSize: 10,
            color: Colors.red,
          ),
        ),

        //remaining text
      ],
    );
  }
}
