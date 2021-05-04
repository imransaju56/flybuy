import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/Screens/Buttons/AppBar.dart';
import 'package:flybuy_ecommerce_project/Screens/Home/Bottom_navigation/bottom_navigation.dart';
import 'package:flybuy_ecommerce_project/Screens/Orders/orders_screen.dart';
import 'package:flybuy_ecommerce_project/Screens/Profile/Components/menu_card_items.dart';
import 'package:flybuy_ecommerce_project/Screens/Profile/Components/order_card_items.dart';
import 'package:flybuy_ecommerce_project/constants/colors.dart';

class ProfileScreen extends StatefulWidget {
  dynamic email = 'saju565774@gmail.com';

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
  static const routename = '/ProfileScreen';
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile',style: TextStyle(
          color: Colors.black,
        ),),
      ),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              // margin: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15, bottom: 15),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.blue, theme_color],
                      ),
                    ),
                    child: Center(
                        child: Text(
                      widget.email.substring(0, 1).toString().toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                      ),
                    )),
                  ),
                  Text(
                    widget.email,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  Card(
                      margin: EdgeInsets.only(
                        top: 25,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OrderCardItems(
                            quantity: '11',
                            quantitytypes: 'Orders',
                          ),
                          OrderCardItems(
                            quantity: '12',
                            quantitytypes: 'Delivered',
                          ),
                          OrderCardItems(
                            quantity: '2',
                            quantitytypes: 'Pending',
                          ),
                        ],
                      )),
                  Card(
                    margin: EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        GestureDetector(

                          child: ProfileOptions(
                            optionName: 'My Orders',
                            svgName: 'assets/icons/shopping.svg',
                          ),
                          onTap: (){
                            Navigator.of(context).pushNamed(Myorders.routename);
                          },
                        ),
                        ProfileOptions(
                          optionName: 'Purchase History',
                          svgName: 'assets/icons/receipt.svg',
                        ),
                        ProfileOptions(
                          optionName: 'Messages',
                          svgName: 'assets/icons/message.svg',
                        ),
                        ProfileOptions(
                          optionName: 'Reviews',
                          svgName: 'assets/icons/reviews.svg',
                        ),
                        ProfileOptions(
                          optionName: 'Payment Options',
                          svgName: 'assets/icons/payment.svg',
                        ),
                        ProfileOptions(
                          optionName: 'Settings',
                          svgName: 'assets/icons/settings.svg',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
