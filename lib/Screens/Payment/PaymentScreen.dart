import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/Screens/Payment/Components/menu.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Payment Options',style: TextStyle(
          color: Colors.black,
        ),),
      ),

      body: SafeArea(
        child: Column(
          children: [
            Options(
              optionName: 'Credit Card',
              svgName: 'assets/icons/receipt.svg',
            ),

            Flexible(child: Image.asset('assets/images/trusted.png',scale: 5,)),

            Options(
              optionName: 'Credit Card',
              svgName: 'assets/icons/receipt.svg',
            ),
          ],
        ),



      ),


    );
  }
}

