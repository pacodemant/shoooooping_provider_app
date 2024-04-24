// common/domain/cart_provider.dart

import 'package:flutter/foundation.dart';
import 'package:shoooooping_provider_app/common/domain/product.dart';

class CartProvider with ChangeNotifier {
  // Private Liste für ausgewählte Produkte
  final List<Product> _selectedProducts = [];

  // Getter-Funktion, um auf die Liste der ausgewählten Produkte zuzugreifen
  List<Product> get selectedProducts => _selectedProducts;

  // Methode zum Hinzufügen eines Produkts zum Warenkorb
  void addToCart(Product product) {
    _selectedProducts.add(product);
    // Benachrichtigt alle Listener über die Änderung
    notifyListeners();
  }
}
