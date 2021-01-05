import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/screens/authentication/sign_up.dart';
import 'package:flybuy_ecommerce_project/screens/authentication/log_in.dart';
import 'package:firebase_core/firebase_core.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;

  void toggle() {

    setState(() => showSignIn = !showSignIn);

  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return login_ui(toggleview: toggle);
    } else {
      return Sign_up(toggleview: toggle);
    }
  }
}
