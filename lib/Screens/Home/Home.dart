import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flybuy_ecommerce_project/DataModel/product_data_model.dart';
import 'package:flybuy_ecommerce_project/constants/SizeConfig.dart';
import 'package:flybuy_ecommerce_project/constants/colors.dart';
import 'package:flybuy_ecommerce_project/screens/authentication/Authenticate.dart';
import 'package:flybuy_ecommerce_project/screens/home/Featured/product_card.dart';
import 'file:///G:/Installedfiles/Androidstudio/flutterprojects/flybuy_ecommerce_project/lib/screens/home/Categories/Categories.dart';
import 'file:///G:/Installedfiles/Androidstudio/flutterprojects/flybuy_ecommerce_project/lib/screens/home/Featured/Featured_products.dart';
import 'package:flybuy_ecommerce_project/screens/home/Home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'file:///G:/Installedfiles/Androidstudio/flutterprojects/flybuy_ecommerce_project/lib/screens/home/Slider/Slider.dart';
import 'file:///G:/Installedfiles/Androidstudio/flutterprojects/flybuy_ecommerce_project/lib/screens/home/Searchbar/searchbar.dart';
import 'package:flybuy_ecommerce_project/services/auth.dart';
import 'package:provider/provider.dart';
import 'Bottom_navigation/bottom_navigation.dart';

class Home extends StatelessWidget {
  static const routename= '/Home';

  @override
  Widget build(BuildContext context) {
    var data = Provider.of<List<ProductModel>>(context, listen: true);
    Size size = MediaQuery.of(context).size;
    Sizeconfig().init(context);
    final Authentication_service _auth = Authentication_service();
    return Scaffold(
      bottomNavigationBar: bottom_nav(),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            Column(
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


                    data==null ? Text('Loading') : product_card() ,

                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
