import 'package:flutter/cupertino.dart';
import 'package:flybuy_ecommerce_project/constants/colors.dart';
import 'package:flybuy_ecommerce_project/model/user.dart';
import 'package:flybuy_ecommerce_project/screens/authentication/authenticate.dart';
import 'file:///G:/Installedfiles/Androidstudio/flutterprojects/flybuy_ecommerce_project/lib/screens/home/Categories/Categories.dart';
import 'file:///G:/Installedfiles/Androidstudio/flutterprojects/flybuy_ecommerce_project/lib/screens/home/Featured/Featured_products.dart';
import 'package:flybuy_ecommerce_project/screens/home/Home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'file:///G:/Installedfiles/Androidstudio/flutterprojects/flybuy_ecommerce_project/lib/screens/home/Slider/Slider.dart';
import 'file:///G:/Installedfiles/Androidstudio/flutterprojects/flybuy_ecommerce_project/lib/screens/home/Searchbar/searchbar.dart';
import 'package:flybuy_ecommerce_project/services/auth.dart';
import 'Bottom_navigation/bottom_navigation.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final Authentication_service _auth = Authentication_service();
    return Scaffold(
      bottomNavigationBar: bottom_nav(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Searchbar(),
                        SizedBox(
                          height: 25,
                        ),
                        slider(),
                      ],
                    ),
                  ),
                  categories(),
                  SizedBox(
                    height: 20,
                  ),
                  featured(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
