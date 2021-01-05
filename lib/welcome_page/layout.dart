import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/constants/SizeConfig.dart';
import 'package:flybuy_ecommerce_project/constants/colors.dart';
import 'package:flybuy_ecommerce_project/model/user.dart';
import 'package:flybuy_ecommerce_project/screens/authentication/log_in.dart';
import 'package:flybuy_ecommerce_project/screens/authentication/sign_up.dart';
import 'package:flybuy_ecommerce_project/welcome_page/components/slider.dart';
import 'package:flybuy_ecommerce_project/welcome_page/components/welcome_text.dart';
import 'package:provider/provider.dart';

class welcomepage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final user=Provider.of<Users>(context);
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)
                      {
                        return Provider<Users>.value(
                          value: user,
                          child: login_ui(),

                        );
                      }
                      ) );
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
                    onPressed: () {

                      Navigator.push(context, MaterialPageRoute(builder: (context)
                      {
                        return Provider<Users>.value(
                          value: user,
                          child: Sign_up(),

                        );

                      }
                      ) );

                    },
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
