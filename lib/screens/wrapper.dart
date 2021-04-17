import 'package:flybuy_ecommerce_project/Description_page/description_page.dart';
import 'package:flybuy_ecommerce_project/model/user.dart';
import 'package:flybuy_ecommerce_project/screens/authentication/authenticate.dart';
import 'package:flybuy_ecommerce_project/screens/authentication/log_in.dart';
import 'package:flybuy_ecommerce_project/screens/cart/cart.dart';
import 'package:flybuy_ecommerce_project/screens/home/Featured/Featured_full_screen/featured_full.dart';
import 'package:flybuy_ecommerce_project/screens/home/Home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/welcome_page/layout.dart';
import 'package:provider/provider.dart';



class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user=Provider.of<Users>(context);
    print(user);

    if(user == null)
      {
        return Authenticate();
      }

    else{
      return Mycart();
    }
    return Authenticate();
  }
}
