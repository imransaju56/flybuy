import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/Screens/Buttons/AppBar.dart';
import 'package:flybuy_ecommerce_project/Screens/Buttons/BottomNavigation.dart';
import 'package:flybuy_ecommerce_project/Screens/Checkout/Components/CheckoutItems.dart';

class CheckoutScreen extends StatefulWidget {
  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigation(
        text: 'Continue',
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            margin: EdgeInsets.only(left: 15.0, right: 15.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AppbarCustom(title: 'Checkout'),
                  Check_items(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
