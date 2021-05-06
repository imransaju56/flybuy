import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class cartFire with ChangeNotifier {
  List yourItemList = [];
  int getTotal;

  Future<bool> addtoCart(
    String productId, title, image, offer,
    num price,
    num discount,
    num quantity,
  ) async {
    final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    final User user = _firebaseAuth.currentUser;
    dynamic db = FirebaseFirestore.instance
        .collection('AddUserItems')
        .doc(user.email)
        .collection('ItemList')
        .doc(productId);

    bool exists = false;
    try {
      final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
      final User user = _firebaseAuth.currentUser;
      await FirebaseFirestore.instance
          .collection('AddUserItems')
          .doc(user.email)
          .collection('ItemList')
          .doc(productId)
          .get()
          .then((value) => {
                if (value.exists)
                  {
                    db.update(<String, dynamic>{
                      'quantity': FieldValue.increment(1),
                    }),
                    SetOptions(merge: true),
                    print(exists = true),
                  }
                else
                  {
                    db.set(<String, dynamic>{
                      'produtId': productId,
                      'title': title,
                      'image': image,
                      'price': price,
                      'discont': discount,
                      'offer': offer,
                      'quantity': FieldValue.increment(1),

                    }),
                    print(exists = false),
                  }
              });
      return exists;
    } catch (e) {
      return false;
    }
  }

  Future<bool> buynow(
    String productId,
    title,
    image,
    offer,
    num price,
    discount,
    quantity,
  ) async {
    final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    final User user = _firebaseAuth.currentUser;
    dynamic db = FirebaseFirestore.instance
        .collection('AddUserItems')
        .doc(user.email)
        .collection('ItemList')
        .doc(productId);

    bool exists = false;
    try {
      final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
      final User user = _firebaseAuth.currentUser;
      await FirebaseFirestore.instance
          .collection('AddUserItems')
          .doc(user.email)
          .collection('ItemList')
          .doc(productId)
          .get()
          .then((value) => {
                if (value.exists)
                  {
                    db.update(<String, dynamic>{
                      'quantity': FieldValue.increment(0),
                    }),
                    SetOptions(merge: true),
                    print(exists = true),
                  }
                else
                  {
                    db.set(<String, dynamic>{
                      'produtId': productId,
                      'title': title,
                      'image': image,
                      'price': price,
                      'discont': discount,
                      'offer': offer,
                      'quantity': FieldValue.increment(1),
                    }),
                    print(exists = false),
                  }
              });
      return exists;
    } catch (e) {
      return false;
    }
  }

  dynamic SpecificSnapshot() {
    final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    final User user = _firebaseAuth.currentUser;

    FirebaseFirestore.instance
        .collection('AddUserItems')
        .doc(user.email)
        .collection('ItemList');
  }
}
