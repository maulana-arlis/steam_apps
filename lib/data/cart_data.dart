// cart_data.dart

import 'package:steam_apps/data/model/cart_model.dart';

class CartData {
  final List<CartItem> items = [];

  void addItem(CartItem item) {
    items.add(item);
  }

  void removeItem(CartItem item) {
    items.remove(item);
  }

  void clearCart() {
    items.clear();
  }
}

final cartData = CartData();
