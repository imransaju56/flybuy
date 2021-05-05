import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/DataModel/Payment/SaveCard/saveCard.dart';
import 'package:flybuy_ecommerce_project/DataModel/cart_model.dart';
import 'package:flybuy_ecommerce_project/DataModel/product_data.dart';
import 'package:flybuy_ecommerce_project/DataModel/user.dart';
import 'package:flybuy_ecommerce_project/Loading_page/loadingpage.dart';
import 'package:flybuy_ecommerce_project/Screens/Authentication/log_in.dart';
import 'package:flybuy_ecommerce_project/Screens/Authentication/sign_up.dart';
import 'package:flybuy_ecommerce_project/Screens/Cart/cart_Screen.dart';
import 'package:flybuy_ecommerce_project/Screens/Checkout/Components/checkout_items.dart';
import 'package:flybuy_ecommerce_project/Screens/Checkout/checkout_screen.dart';
import 'package:flybuy_ecommerce_project/Screens/Description_page/components/Bottom_nav.dart';
import 'package:flybuy_ecommerce_project/Screens/Description_page/description_page.dart';
import 'package:flybuy_ecommerce_project/Screens/Home/Featured/product_card.dart';
import 'package:flybuy_ecommerce_project/Screens/Home/Home.dart';
import 'package:flybuy_ecommerce_project/Screens/Home/NavigationBar.dart';
import 'package:flybuy_ecommerce_project/Screens/Orders/orders_screen.dart';
import 'package:flybuy_ecommerce_project/Screens/Payment/Components/CardOptions.dart';
import 'package:flybuy_ecommerce_project/Screens/Payment/Components/NewpaymentInput.dart';
import 'package:flybuy_ecommerce_project/Screens/Payment/Components/SaveCard.dart';
import 'package:flybuy_ecommerce_project/Screens/Payment/PaymentScreen.dart';
import 'package:flybuy_ecommerce_project/Screens/Profile/ProfileScreen.dart';
import 'package:flybuy_ecommerce_project/Screens/wrapper.dart';
import 'package:flybuy_ecommerce_project/Services/auth.dart';
import 'package:flybuy_ecommerce_project/Welcome_page/layout.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider.value(
          value: Authentication_service().user,
        ),
        StreamProvider.value(
          value: ProductData().getProductData(),
        ),
        ChangeNotifierProvider(create: (ctx) => Cart()),
        ChangeNotifierProvider(create:(ctx)=> SaveCreditCard()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            elevation: 0,
            color: Colors.white,
            actionsIconTheme: IconThemeData(
              color: Colors.black,
            ),
            iconTheme: IconThemeData(
              color: Colors.black,
            ),

          ),
        ),
        home: loading(
          show: true,
        ),
        routes: {
          Home.routename: (ctx) => Home(),
          description.routename: (ctx) => description(),
          Mycart.routename: (ctx) => Mycart(),
          CheckoutScreen.routename: (ctx) => CheckoutScreen(),
          Myorders.routename: (ctx) => Myorders(),
          ProfileScreen.routename: (ctx) => ProfileScreen(),
          loading.routename: (ctx) => loading(),
          product_card.routename: (ctx) => product_card(),
          Wrapper.routename: (ctx) => Wrapper(),
          Bottom_nav.routename: (ctx) => Bottom_nav(),
          Check_items.routename: (ctx) => Check_items(),
          PaymentScreen.routename:(ctx)=>PaymentScreen(),
          InputNew.routename:(ctx)=>InputNew(),
          SavedCards.routename:(ctx)=>SavedCards(),
          HomePage.routename:(ctx)=>HomePage(),
        },
      ),
    );
  }
}
