import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/constants/SizeConfig.dart';
import 'package:flybuy_ecommerce_project/constants/colors.dart';
import 'package:flybuy_ecommerce_project/model/user.dart';
import 'package:flybuy_ecommerce_project/screens/authentication/Log_in.dart';
import 'package:flybuy_ecommerce_project/screens/authentication/Sign_up.dart';
import 'package:flybuy_ecommerce_project/welcome_page/components/slider.dart';
import 'package:flybuy_ecommerce_project/welcome_page/components/welcome_text.dart';

class welcomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Sizeconfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(
                  height: Sizeconfig.blockSizeVertical*5,
                ),
                welcome_text(),
                slider_wel(),

                SizedBox(
                  height: Sizeconfig.blockSizeVertical*5,
                ),

                SizedBox(
                  width: Sizeconfig.blockSizeHorizontal * 80,
                  height: Sizeconfig.blockSizeVertical * 8,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.pushNamed(context, 'Log_in');
                    },
                    child: Text(
                      'Log in',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: Sizeconfig.blockSizeHorizontal * 80,
                  height: Sizeconfig.blockSizeVertical * 8,
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.black38.withOpacity(0.7),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
