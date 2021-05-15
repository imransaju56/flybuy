import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/Screens/Authentication/log_in.dart';
import 'package:flybuy_ecommerce_project/Screens/Orders/orders_screen.dart';
import 'package:flybuy_ecommerce_project/Screens/Profile/Components/Edit%20Account/account.dart';
import 'package:flybuy_ecommerce_project/Screens/Profile/Components/menu_card_items.dart';
import 'package:flybuy_ecommerce_project/Screens/Profile/Components/order_card_items.dart';
import 'package:flybuy_ecommerce_project/Services/auth.dart';
import 'package:flybuy_ecommerce_project/Welcome_page/layout.dart';

class Settings extends StatefulWidget {
  const Settings({Key key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
  static const routename='/Settings';
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    Authentication_service authentication_service=Authentication_service();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body:SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              // margin: EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [


                  Card(
                    margin: EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        InkWell(
                          child: ProfileOptions(
                            optionName: 'Edit Account',
                            svgName: 'assets/icons/shopping.svg',
                          ),

                          onTap: (){

                            Navigator.of(context).pushNamed(AccountInfo.routename);
                          },
                        ),
                        InkWell(

                          onTap: (){

                          },
                          child: ProfileOptions(
                            optionName: 'About',
                            svgName: 'assets/icons/receipt.svg',
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (){

                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (contex) => login_ui()),
                              (route) => false);

                      authentication_service.Signout();
                    },
                    child: Card(

                      margin: EdgeInsets.only(left: 25,right: 25),
                      child:Padding(
                        padding: const EdgeInsets.all(15.0),
                        child:


                            Row(
                              children: [
                                Spacer(),
                                Text('Logout',style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 16,),),
                                Spacer(),
                              ],
                            ),



                      ),
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
