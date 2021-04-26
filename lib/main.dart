import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/Screens/Cart/cart_Screen.dart';
import 'package:flybuy_ecommerce_project/Screens/Checkout/checkout_screen.dart';
import 'package:flybuy_ecommerce_project/Screens/Description_page/description_page.dart';
import 'package:flybuy_ecommerce_project/Screens/Home/Home.dart';
import 'package:flybuy_ecommerce_project/Screens/Orders/orders_screen.dart';
import 'package:flybuy_ecommerce_project/Screens/Profile/ProfileScreen.dart';
import 'package:flybuy_ecommerce_project/model/user.dart';
import 'package:flybuy_ecommerce_project/screens/wrapper.dart';
import 'package:flybuy_ecommerce_project/services/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider<Users>.value(
          value: Authentication_service().user,
        ),
      ],
      child: MaterialApp(
        home: Wrapper(),
        routes: {
          Home.routename: (ctx) => Home(),
          description.routename: (ctx) => description(),
          Mycart.routename: (ctx) => Mycart(),
          CheckoutScreen.routename: (ctx) => CheckoutScreen(),
          Myorders.routename: (ctx) => Myorders(),
          ProfileScreen.routename: (ctx) => ProfileScreen(),
        },
      ),
    );
  }
}
