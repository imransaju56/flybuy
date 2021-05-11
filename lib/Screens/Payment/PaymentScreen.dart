import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/Constants/colors.dart';
import 'package:flybuy_ecommerce_project/Screens/Home/Home.dart';
import 'package:flybuy_ecommerce_project/Screens/Payment/Components/menu.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
  static const routename='Payment';
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Choose Payment Options',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              margin: EdgeInsets.all(15),
              child: Column(
                children: [

                  InkWell(
                    onTap: (){

                      Navigator.pushNamed(context, Home.routename);

                    },
                    child: Options(
                      optiontype: 'Recommended Option',
                      optionName: 'Credit Card',
                      svgName: 'assets/icons/receipt.svg',
                    ),
                  ),
                  Image.asset(
                    'assets/images/trusted.png',
                    scale: 5,
                  ),

                  Divider(),

                  InkWell(
                    onTap: (){},
                    child: Options(
                      optiontype: 'Other Option',
                      optionName: 'Cash On Delivery',
                      svgName: 'assets/icons/receipt.svg',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        color: theme_color,
        child: ListTile(
          contentPadding: EdgeInsets.only(left: 30, right: 30),
          leading: Text(
            'Total Amount',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            'ট 250',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
