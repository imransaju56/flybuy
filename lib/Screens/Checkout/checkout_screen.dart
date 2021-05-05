import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/Constants/colors.dart';
import 'package:flybuy_ecommerce_project/Screens/Buttons/AppBar.dart';
import 'package:flybuy_ecommerce_project/Screens/Buttons/BottomNavigation.dart';
import 'package:flybuy_ecommerce_project/Screens/Checkout/Components/checkout_Items.dart';
import 'package:flybuy_ecommerce_project/Screens/Home/Featured/Featured_full_screen/components/appbar.dart';
import 'package:flybuy_ecommerce_project/Screens/Payment/PaymentScreen.dart';


class CheckoutScreen extends StatefulWidget {
  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
  static const routename='/CheckoutScreen';

}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout',style: TextStyle(
          color: Colors.black,
        ),),
      ),
      bottomSheet: InkWell(
        onTap: (){
          Navigator.of(context).pushNamed(PaymentScreen.routename);

        },
        child: Container(
          height: kToolbarHeight,
            width: double.infinity,
            child: Center(child: Text('Proceed to Payment',style: TextStyle(
              color: Colors.white,

            ),)),
          color: theme_color,
        ),
      ),


      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),

          child: SingleChildScrollView(
            child: Column(
              children: [
                Check_items(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
