import 'package:flybuy_ecommerce_project/DataModel/user.dart';
import 'package:flybuy_ecommerce_project/Screens/Authentication/authenticate.dart';

import 'package:flybuy_ecommerce_project/Screens/Checkout/checkout_screen.dart';
import 'package:flybuy_ecommerce_project/Screens/Home/Home.dart';
import 'package:flybuy_ecommerce_project/Screens/Home/NavigationBar.dart';
import 'package:flybuy_ecommerce_project/Screens/Orders/orders_screen.dart';
import 'package:flybuy_ecommerce_project/Screens/Payment/PaymentScreen.dart';
import 'package:flybuy_ecommerce_project/Screens/Profile/ProfileScreen.dart';

import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/Welcome_page/layout.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatefulWidget{
   dynamic show;
  Wrapper({this.show});

  static const routename = '/Wrapper';

  @override
  _WrapperState createState() => _WrapperState();

}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Users>(context,listen: true);
    print('user is: $user');

    if (user == null ) {
      return welcomepage(
        showSignIn: widget.show,
      );
    } else {
      return
        PaymentScreen();
      //   CheckoutScreen();
      // ProfileScreen();
      // Myorders();
    }
  }
}
