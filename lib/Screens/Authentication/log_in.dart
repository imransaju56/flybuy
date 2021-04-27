import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/Screens/Home/Home.dart';
import 'package:flybuy_ecommerce_project/constants/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flybuy_ecommerce_project/services/auth.dart';


class login_ui extends StatefulWidget {
  final Function toggleview;
  login_ui({this.toggleview});

  @override
  _login_uiState createState() => _login_uiState();
}

class _login_uiState extends State<login_ui> {
  String Email = '';
  String password = '';
  String error = '';


  bool _obscureText = true;
  final _formkey = GlobalKey<FormState>();
  Authentication_service _authentication_service = Authentication_service();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 80,
                        ),
                        Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(50, 50, 50, 50)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          validator: (val) =>
                              val.isEmpty ? 'Enter email address' : null,
                          onChanged: (val) {
                            setState(() {
                              Email = val;
                            });
                          },
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(216, 216, 216, 1))),
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          obscureText: _obscureText,
                          validator: (val) =>
                              val.length < 6 ? 'Enter password 6+ long' : null,
                          onChanged: (val) {
                            setState(() {
                              password = val;
                            });
                          },
                          decoration: InputDecoration(
                            suffixIcon: GestureDetector(
                              child: Icon(_obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onTap: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                            ),
                            enabledBorder:
                            UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromRGBO(216, 216, 216, 1))),
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        SizedBox(
                          width: size.width * 0.9,
                          height: size.height * 0.08,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            color: theme_color,
                            onPressed: () async {
                              if (_formkey.currentState.validate()) {
                                dynamic result = await _authentication_service
                                    .SignIn_with_Email_password(
                                        Email, password);

                                print("login successful");

                                if (result == null) {
                                  error = result;
                                } else {


                                  print('error is ${result}');
                                  return Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (contex)=> Home()), (route) => false);

                                }

                                
                              }
                            },
                            child: Text(
                              'Log in',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    GestureDetector(

                      onTap: (){
                        widget.toggleview();
                      },

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: TextStyle(
                              color: Color.fromRGBO(163, 163, 163, 1),
                            ),
                          ),
                          Text(
                            ' Sign Up',
                            style: TextStyle(
                              color: Color.fromRGBO(60, 60, 60, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
