import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/constants/colors.dart';



class welcomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(
                  height: size.height*0.05,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Welcome to ',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        Text(
                          'Flybuy',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.012,
                    ),
                    Text(
                      'Explore Us',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  "assets/images/load.png",
                  height: size.height * 0.7,
                  width: size.width * 0.7,
                ),
                SizedBox(
                  width: size.width * 0.7,
                  height: size.height * 0.09,
                  child: FlatButton(


                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    color: loadingpage_color,
                    onPressed: () {},
                    child: Text(
                      'Log in',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  width: size.width * 0.7,
                  height: size.height * 0.09,
                  child: FlatButton(


                    onPressed: () {},
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
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

