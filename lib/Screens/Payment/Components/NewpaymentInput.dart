import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:flybuy_ecommerce_project/DataModel/Payment/SaveCard/saveCard.dart';
import 'package:flybuy_ecommerce_project/DataModel/Payment/payment-service.dart';
import 'package:provider/provider.dart';
import 'package:stripe_payment/stripe_payment.dart';
import 'package:progress_dialog/progress_dialog.dart';

class InputNew extends StatefulWidget {
  num amount;
  InputNew({this.amount});
  @override

  _InputNewState createState() => _InputNewState();
  static const routename = '/newpayment';

}

class _InputNewState extends State<InputNew> {

  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void onCreditCardModelChange(CreditCardModel creditCardModel) {
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }

  @override
  Widget build(BuildContext context) {
    var savedItems = Provider.of<SaveCreditCard>(context, listen: true);
    final FirebaseAuth Auth = FirebaseAuth.instance;
    final User user = Auth.currentUser;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text('Add new card',style: TextStyle(
          color: Colors.black,
        ),),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CreditCardWidget(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                showBackView: isCvvFocused,
                obscureCardNumber: true,
                obscureCardCvv: true,
              ),
              CreditCardForm(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                themeColor: Colors.blue,
                formKey: formkey,
                dateValidationMessage: 'Enter Valid Expiration Date',
                cvvValidationMessage: 'Enter Valid CVV',
                numberValidationMessage: 'Enter Valid Card Number',
                cardHolderDecoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Card Holder Name',
                  hintText: 'Ivan drago',
                ),
                cardNumberDecoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Number',
                  hintText: 'XXXX XXXX XXXX XXXX',
                ),
                expiryDateDecoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Expired Date',
                    hintText: 'XX/XX'),
                cvvCodeDecoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'CVV',
                    hintText: 'XXX'),
                onCreditCardModelChange: onCreditCardModelChange,
              ),
              SizedBox(height: 20,),
              Image.asset(
                'assets/images/trusted.png',
                scale: 5,
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: ElevatedButton(
        child: Container(
          height: 60,
          child: Center(
            child: Text(
              'Confirm Payment',
              style: TextStyle(
                fontSize: 14,
                package: 'flutter_credit_card',
              ),
            ),
          ),
        ),
        onPressed: () async {

          if (formkey.currentState.validate() && cardHolderName.isNotEmpty) {
            ProgressDialog dialog = ProgressDialog(context);
            dialog.style(
                message: 'Please wait',
                progressWidget: CircularProgressIndicator());

            await dialog.show();

            var expirySplit = expiryDate.split('/');
            CreditCard stripecard = CreditCard(
              name: cardHolderName,
              number: cardNumber,
              expMonth: int.parse(expiryDate.split('/')[0]),
              expYear: int.parse(expiryDate.split('/')[1]),
            );

            



            var response = await StripeService.payViaExistingCard(
              amount:'${500*100}'.toString(),
              currency: 'BDT',
              creditCard: stripecard,
            );

            savedItems.addCreditCards(
                cardNumber, expiryDate, cardHolderName, cvvCode, isCvvFocused);

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

            return FirebaseFirestore.instance.collection('AddUserItems').doc(user.email).collection('ItemList').doc().delete();
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Please enter valid details'),
                duration: Duration(milliseconds: 1200),
              ),
            );

            print('Invalid');

          }
        },
      ),
    );
  }
}
