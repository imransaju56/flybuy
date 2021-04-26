import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/Constants/colors.dart';
import 'package:flybuy_ecommerce_project/Screens/Buttons/appBar.dart';
import 'package:flybuy_ecommerce_project/Screens/Home/Featured/Featured_full_screen/components/appbar.dart';
import 'package:flybuy_ecommerce_project/Screens/Orders/Components/orders_items.dart';
import 'package:flybuy_ecommerce_project/Screens/Profile/Components/order_card_items.dart';

class Myorders extends StatefulWidget {
  @override
  _MyordersState createState() => _MyordersState();
  static const routename= '/Myorders';
}

class _MyordersState extends State<Myorders> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children:[
            Column(
              children: [
                AppbarCustom(
                  title: 'My Orders',
                ),

                for(int i=0;i<5;i++)
                Orders_items(),

              ],
            ),

          ],
        ),
      ),
    );
  }
}
