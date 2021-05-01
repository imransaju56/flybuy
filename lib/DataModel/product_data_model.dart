import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class ProductModel with ChangeNotifier {
  final String id;
  final String ProductTitle;
  final String image;
  final num price;
  final num discount;
  final String categories;
  final String description;
  final String offer;
  final bool bestseller;

  ProductModel({
    this.id,
    this.ProductTitle,
    this.image,
    this.price,
    this.discount,
    this.description,
    this.offer,
    this.categories,
    this.bestseller,
  });

  factory  ProductModel.map(DocumentSnapshot doc) {
    Map data = doc.data();

    return  ProductModel(
      id: doc.id,
      ProductTitle: data['product_title'] ?? 'Empty',
      image: data['image'] ?? 'No image here',
      price: data['price'] ?? 0,
      discount: data['discount'] ?? 0,
      categories: data['categories'] ?? 'No cat',
      description: data['description'] ?? 'No description here',
      offer: data['offer'] ?? '',
      bestseller: data['bestseller'] ?? 'not present',
    );
  }
}
