import 'package:flutter/material.dart';
import 'package:flybuy_ecommerce_project/DataModel/Payment/payment-service.dart';
import 'package:flybuy_ecommerce_project/Screens/Payment/Components/NewpaymentInput.dart';
import 'package:flybuy_ecommerce_project/Screens/Payment/Components/SaveCard.dart';
import 'package:progress_dialog/progress_dialog.dart';


class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
  static const routename='/Home';
}

class HomePageState extends State<HomePage> {
  onItemPress(BuildContext context, int index) async {
    ProgressDialog dialog = ProgressDialog(context);

    payViaNewCard(BuildContext context) async {
      ProgressDialog dialog = ProgressDialog(context);
      dialog.style(
        message: 'Please wait..',
        progressWidget: CircularProgressIndicator(),
      );
      await dialog.show();
      var reponse = await StripeService.payWithNewCard(
        amount: '15000',
        currency: 'USD',
      );
      await dialog.hide();
    }

    switch (index) {
      case 0:
        Navigator.pushNamed(context, InputNew.routename);

        break;
      case 1:
        Navigator.pushNamed(context, SavedCards.routename);
        break;
    }
  }

  @override
  void initState() {
    super.initState();
    StripeService.init();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Credit Card Options',style: TextStyle(
          color: Colors.black,
        ),),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.separated(
            itemBuilder: (context, index) {
              Icon icon;
              Text text;

              switch (index) {
                case 0:
                  icon = Icon(Icons.add_circle, color: theme.primaryColor);
                  text = Text('Pay via new card');
                  break;
                case 1:
                  icon = Icon(Icons.credit_card, color: theme.primaryColor);
                  text = Text('Pay via existing card');
                  break;
              }

              return InkWell(
                onTap: () {
                  onItemPress(context, index);
                },
                child: ListTile(
                  title: text,
                  leading: icon,
                ),
              );
            },
            separatorBuilder: (context, index) => Divider(
                  color: theme.primaryColor,
                ),
            itemCount: 2),
      ),
    );
  }
}
