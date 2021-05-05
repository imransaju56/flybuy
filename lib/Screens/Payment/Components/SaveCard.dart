import 'package:flutter/material.dart';

import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:flybuy_ecommerce_project/DataModel/Payment/SaveCard/saveCard.dart';
import 'package:flybuy_ecommerce_project/DataModel/Payment/payment-service.dart';
import 'package:progress_dialog/progress_dialog.dart';

import 'package:provider/provider.dart';
import 'package:stripe_payment/stripe_payment.dart';

class SavedCards extends StatefulWidget {
  @override
  _SavedCardsState createState() => _SavedCardsState();
  static const routename = '/SavedCards';
}

class _SavedCardsState extends State<SavedCards> {
  @override
  Widget build(BuildContext context) {
    var savedItems = Provider.of<SaveCreditCard>(context, listen: true);

    return Scaffold(
      appBar: AppBar(
        title: Text('Saved Card',style: TextStyle(
          color: Colors.black,
        ),),
      ),

      body: SafeArea(
        child: ListView.builder(
          itemCount: savedItems.carditems.length,
          itemBuilder: (context, index) {

            return InkWell(


              child: CreditCardWidget(
                  cardNumber:
                  savedItems.carditems.values.toList()[index].cardNumber ??
                      '4242 4242 4242 4242',
                  expiryDate:
                  savedItems.carditems.values.toList()[index].expiryDate??
                    '12/21',
                  cardHolderName:
                  savedItems.carditems.values.toList()[index].cardHolderName ??
                      'imran',
                  cvvCode:
                  savedItems.carditems.values.toList()[index].cvvCode ??
                      '123',
                  showBackView:
                  savedItems.carditems.values.toList()[index].isCvvFocused ??
                      false,

              ),

              onTap: ()async {
                ProgressDialog dialog = ProgressDialog(context);
                dialog.style(
                    message: 'Please wait',
                    progressWidget: CircularProgressIndicator());

                await dialog.show();


                CreditCard stripecard = CreditCard(
                  name: savedItems.carditems.values.toList()[index].cardHolderName,
                  number:savedItems.carditems.values.toList()[index].cardNumber,
                  expMonth: int.parse(savedItems.carditems.values.toList()[index].expiryDate.split('/')[0]),
                  expYear: int.parse(savedItems.carditems.values.toList()[index].expiryDate.split('/')[1]),
                );

                var response = await StripeService.payViaExistingCard(
                  amount: '2500',
                  currency: 'USD',
                  creditCard: stripecard,
                );


                await dialog.hide();

                ScaffoldMessenger.of(context)
                    .showSnackBar(
                  SnackBar(
                    content: Text(response.message),
                    duration: Duration(milliseconds: 1200),
                  ),
                )
                    .closed
                    .then((value) => Navigator.pop(context));
                print('Valid');
              }





            );
          },
        ),
      ),

    );

  }
}
