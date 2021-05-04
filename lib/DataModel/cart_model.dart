import 'package:flutter/foundation.dart';

class CartItem {
  final String productId;
  final num price;
  final String images;
  final String title;
  final num quantity;

  CartItem(
      {this.images, this.productId, this.price, this.title, this.quantity});
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get item {
    return {..._items};
  }

  int get itemCount {
    int total=0;
    _items.forEach((key, value) {
      total+=value.quantity;
    });
   return total;
  }

  double get totalAmount {
    var total = 0.0;
    _items.forEach((key, CartItem) {
      total += CartItem.price * CartItem.quantity;
    });
    return total;
  }

  void addItems(
    String productId,
    String images,
    String title,
    num price,
  ) {
    if (_items.containsKey(productId)) {
      _items.update(
          productId,
          (existingCardtItem) => CartItem(
                productId: existingCardtItem.productId,
                images: existingCardtItem.images,
                title: existingCardtItem.title,
                price: existingCardtItem.price,
                quantity: existingCardtItem.quantity + 1,
              ));
    } else {
      _items.putIfAbsent(
          productId,
          () => CartItem(
                productId: productId,
                images: images,
                title: title,
                price: price,
                quantity: 1,
              ));
    }

    notifyListeners();
  }

  void addcheckoutItems(
    String productId,
    String images,
    String title,
    num price,
  ) {
    _items.putIfAbsent(
        productId,
        () => CartItem(
              productId: productId,
              images: images,
              title: title,
              price: price,
              quantity: 1,
            ));

    notifyListeners();
  }

  void removeItem(String Id) {
    _items.remove(Id);
    notifyListeners();
  }

  void clear() {
    _items = {};
    notifyListeners();
  }
}
