import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flybuy_ecommerce_project/DataModel/product_data_model.dart';

class ProductData with ChangeNotifier {
  var productData =
      FirebaseFirestore.instance.collection('products').snapshots();

   Stream<List<ProductModel>> getProductData() {
    var items = productData
        .map((list) => list.docs.map((doc) => ProductModel.map(doc)).toList());
    return items;
  }
}
