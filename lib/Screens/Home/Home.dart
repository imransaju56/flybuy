import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flybuy_ecommerce_project/DataModel/product_data_model.dart';
import 'package:flybuy_ecommerce_project/Screens/Home/BestSeller/title.dart';
import 'package:flybuy_ecommerce_project/Screens/Search/searchbar.dart';
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

class Home extends StatefulWidget {
  static const routename = '/Home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var data = Provider.of<List<ProductModel>>(context, listen: true);
    Size size = MediaQuery.of(context).size;
    Sizeconfig().init(context);
    final Authentication_service _auth = Authentication_service();
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(14),
          child: Column(
            children: [
              InkWell(
                  onTap: () async {
                    await Navigator
                        .of(context)
                        .push(MaterialPageRoute<dynamic>(builder: (BuildContext context) {
                      return Search();
                    }));
                  },
                  child: Searchbar()),

              Flexible(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    slider(),
                    SizedBox(
                      height: 15,
                    ),
                    categories(),
                    SizedBox(
                      height: 20,
                    ),
                    featured(),
                    data == null ? Text('Loading') : product_card(),
                    SizedBox(
                      height: 15,
                    ),
                    Bestseller_title(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
