import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/Screens/Authentication/log_in.dart';
import 'package:flybuy_ecommerce_project/Screens/Authentication/sign_up.dart';
import 'package:flybuy_ecommerce_project/constants/colors.dart';
import 'package:flybuy_ecommerce_project/loading_page/loadingpage.dart';
import 'package:flybuy_ecommerce_project/model/user.dart';
import 'package:flybuy_ecommerce_project/screens/wrapper.dart';
import 'package:flybuy_ecommerce_project/services/auth.dart';
import 'package:flybuy_ecommerce_project/welcome_page/layout.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';


void main() async {
 WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp();
  runApp(MaterialApp(
    home: MyApp(),

  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return StreamProvider<Users>.value(
      value: Authentication_service().user,
      child: MaterialApp(
        home: Wrapper(),
      ),

    );
  }
}
