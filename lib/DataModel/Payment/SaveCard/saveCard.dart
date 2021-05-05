import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SaveCardModel {
  final String cardNumber;
  final String expiryDate;
  final String cardHolderName;
  final String cvvCode;
  final bool isCvvFocused;

  SaveCardModel({
    this.cardNumber,
    this.expiryDate,
    this.cardHolderName,
    this.cvvCode,
    this.isCvvFocused = false,
  });
}

class SaveCreditCard with ChangeNotifier {


  Map<String, SaveCardModel> _carditems = {};

  Map<String, SaveCardModel> get carditems {
    return {..._carditems};
  }

  void addCreditCards(
    String cardNumber,
    String expiryDate,
    String cardHolderName,
    String cvvCode,
    bool showBackView,
  ) {
    if (_carditems.containsKey(cardNumber)) {
      _carditems.update(
        cardNumber,
        (existingItem) => SaveCardModel(

          cardNumber: existingItem.cardNumber,
          cardHolderName: existingItem.cardHolderName,
          cvvCode: existingItem.cvvCode,
          expiryDate: existingItem.expiryDate,
          isCvvFocused: existingItem.isCvvFocused,
        ),
      );
    } else {
      _carditems.putIfAbsent(
          cardNumber,
          () => SaveCardModel(
                cardNumber: cardNumber,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                expiryDate: expiryDate,
                isCvvFocused: false,
              ));
    }
    notifyListeners();
  }
}
