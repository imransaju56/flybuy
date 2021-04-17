import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/Screens/Cart/Cart_Screen.dart';

class bottom_nav extends StatefulWidget {
  @override
  _bottom_navState createState() => _bottom_navState();
}

class _bottom_navState extends State<bottom_nav> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(
        left: 20.0 * 2,
        right: 20.0 * 2,
        bottom: 20.0 / 4,
      ),
      height: size.height * 0.07,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          offset: Offset(0, 0),
          blurRadius: 10,
        ),
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(
              Icons.home,
              color: Colors.blue,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return Mycart();
              }));
            },
            child: IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.blue,
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.chat,
              color: Colors.blue,
            ),
          ),
          IconButton(
            onPressed: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: (context){
              //   return profile();
              //
              // }));
            },
            icon: Icon(
              Icons.person,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
