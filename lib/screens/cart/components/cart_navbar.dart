import 'package:flutter/material.dart';

class cart_appbar extends StatefulWidget {
  @override
  _cart_appbarState createState() => _cart_appbarState();
}

class _cart_appbarState extends State<cart_appbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.arrow_back),
          ),

          Text(
            "My Cart",
            style: TextStyle(
              color: Colors.black.withOpacity(0.7),
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),

          Spacer(),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.filter_list_outlined),
          ),
        ],
      ),
    );
  }
}
