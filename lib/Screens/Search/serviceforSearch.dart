import 'package:cloud_firestore/cloud_firestore.dart';

class SearchService {
  searchByName(String searchField) {
    return FirebaseFirestore.instance
        .collection('products')
        .where('search',
            isGreaterThanOrEqualTo: searchField.substring(0, 1).toUpperCase())
        .get();
  }
}
