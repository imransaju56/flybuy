import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/constants/colors.dart';

class Sign_up extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 20, color: Color.fromRGBO(50, 50, 50, 50)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(216, 216, 216, 1),
                          ),
                        ),
                        labelText: 'Name',
                        labelStyle: TextStyle(fontSize: 12),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
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
                    TextField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(216, 216, 216, 1))),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      obscureText: true,
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
                        color: loadingpage_color,
                        onPressed: () {},
                        child: Text(
                          'Sign Up',
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: Color.fromRGBO(163, 163, 163, 1),
                      ),
                    ),
                    Text(
                      ' Log in',
                      style: TextStyle(
                        color: Color.fromRGBO(60, 60, 60, 1),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
