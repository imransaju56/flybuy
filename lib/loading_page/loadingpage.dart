import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/constants/colors.dart';


class loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: (Container(
        child: Center(
            child: Text(
              'Flybuy',
              style: TextStyle(
                fontSize: size.width * 0.1,
                color: Colors.blue,
                fontWeight: FontWeight.w600,
                height: 0.7,
              ),
            )),
      )),
    );
  }
}
