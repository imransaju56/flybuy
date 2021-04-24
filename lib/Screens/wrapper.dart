import 'package:flybuy_ecommerce_project/Screens/Checkout/checkout_screen.dart';
import 'package:flybuy_ecommerce_project/Screens/Home/Home.dart';
import 'package:flybuy_ecommerce_project/Screens/Orders/orders_screen.dart';
import 'package:flybuy_ecommerce_project/Screens/Profile/ProfileScreen.dart';
import 'package:flybuy_ecommerce_project/model/user.dart';
import 'package:flybuy_ecommerce_project/screens/authentication/Authenticate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Users>(context);
    print(user);

    if (user == null) {
      return Authenticate();
    } else {
      return
      // Home();
        // Checkout_Screen();
      // ProfileScreen();
      Myorders();
    }
  }
}
