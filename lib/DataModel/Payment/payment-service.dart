import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

import 'package:stripe_payment/stripe_payment.dart';

class StripeTransactionResponse {
  String message;
  bool success;

  StripeTransactionResponse({this.message, this.success});
}

class StripeService {
  static String secret =
      'sk_test_51ImnjrHzGxIHORZtP9qbNdqD20bYak6uLG2LIQbmTiMc8kFbkJSAejqnSOTIcrH2pUuzVwxdGv696mN06o6EcxsL00iJftnfqe';
  static Map<String, String> headers = {
    'Authorization': 'Bearer ${StripeService.secret}',
    'Content-Type': 'application/x-www-form-urlencoded',
  };

  static init() {
    StripePayment.setOptions(StripeOptions(
        publishableKey:
            "pk_test_51ImnjrHzGxIHORZt8k7Cyjcj3Ndr9ybVudot465vezMorznsB9ZV3QfNCdfyRBTAVkUzEo7qFbtSoO48QLXSFE1v00Nyh01Gd5",
        merchantId: "Test",
        androidPayMode: 'test'));
  }

  //Pay with new card

  static Future<StripeTransactionResponse> payWithNewCard(
      {String amount, String currency}) async {
    try {
      //creating card form request
      var paymentMethod = await StripePayment.paymentRequestWithCardForm(
          CardFormPaymentRequest());
      //creating card form request

      //creating payment intent
      var paymentIntent = await StripeService.createPaymentIntent(
        amount,
        currency,
      );
      //creating payment intent

      //checking response and verifing if transaction happened
      var reposnse = await StripePayment.confirmPaymentIntent(
        PaymentIntent(
            clientSecret: paymentIntent['client_secret'],
            paymentMethodId: paymentMethod.id),
      );

      if ((reposnse.status) == 'succeeded') {
        return new StripeTransactionResponse(
          message: 'Transaction successful',
          success: true,
        );
      } else {
        return new StripeTransactionResponse(
          message: 'Transaction Failed',
          success: false,
        );
      }

      //checking response and verifing if transaction happened
    }

    //checking platform exception on canceling the transaction
    on PlatformException catch (err) {
      return StripeService.getplateformExceptionErrorResult(err);
    }
    //checking platform exception on canceling the transaction

    catch (Err) {
      return StripeTransactionResponse(
        message: 'Transaction failed: ${Err.toString()}',
        success: false,
      );
    }
  }

  // pay with new card ended

// pay with existing card

  static Future<StripeTransactionResponse> payViaExistingCard(
      {String amount, String currency, CreditCard creditCard}) async {
    try {
      //creating card form request
      var paymentMethod = await StripePayment.createPaymentMethod(
        PaymentMethodRequest(card: creditCard),
      );
      //creating card form request

      //creating payment intent
      var paymentIntent = await StripeService.createPaymentIntent(
        amount,
        currency,
      );
      //creating payment intent

      //checking response and verifing if transaction happened
      var reposnse = await StripePayment.confirmPaymentIntent(
        PaymentIntent(
            clientSecret: paymentIntent['client_secret'],
            paymentMethodId: paymentMethod.id),
      );

      if ((reposnse.status) == 'succeeded') {
        return new StripeTransactionResponse(
          message: 'Transaction successful',
          success: true,
        );
      } else {
        return new StripeTransactionResponse(
          message: 'Transaction Failed',
          success: false,
        );
      }

      //checking response and verifing if transaction happened
    }

    //checking platform exception on canceling the transaction
    on PlatformException catch (err) {
      return StripeService.getplateformExceptionErrorResult(err);
    }
    //checking platform exception on canceling the transaction

    catch (Err) {
      return StripeTransactionResponse(
        message: 'Transaction failed: ${Err.toString()}',
        success: false,
      );
    }
  }

  // pay with existing card ended

//plateformform exception model
  static getplateformExceptionErrorResult(err) {
    String message = 'Something went wrong';
    if (err.code == 'cancelled') {
      message = 'Transaction cancelled';
    }

    return StripeTransactionResponse(message: message, success: false);
  }

  //plateformform exception model

  //creating payment intent

  static Future<Map<String, dynamic>> createPaymentIntent(
      String amount, String currency) async {
    try {
      Map<String, dynamic> body = {
        'amount': amount,
        'currency': currency,
        'payment_method_types[]': 'card'
      };

      var response = await http.post(
          Uri.parse('https://api.stripe.com/v1/payment_intents'),
          body: body,
          headers: StripeService.headers);
      return jsonDecode(response.body);
    } catch (err) {
      print('error charging user: ${err.toString()}');
    }
    return null;
  }
}
