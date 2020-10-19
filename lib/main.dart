import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/Authentication/log_in.dart';
import 'package:flybuy_ecommerce_project/Authentication/sign_up.dart';
import 'package:flybuy_ecommerce_project/constants/colors.dart';
import 'package:flybuy_ecommerce_project/loading_page/loadingpage.dart';
import 'package:flybuy_ecommerce_project/welcome_page/layout.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'welcome_page',
    routes: {
      'Loading_page': (context) {
        return loading();
      },
      'welcome_page': (context) {
        return welcomepage();
      },
      'Log_in': (context) {
        return login_ui();
      },
      'Sign_up': (context) => Sign_up(),
    },
  ));
}
