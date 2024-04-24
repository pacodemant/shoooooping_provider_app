// common/domain/product_provider.dart
import 'package:flutter/foundation.dart';
import 'package:shoooooping_provider_app/common/domain/product.dart';
import 'package:shoooooping_provider_app/common/get_default_products.dart';

class ProductProvider with ChangeNotifier {
  final List<Product> _products = getDefaultProducts();

  List<Product> get products => _products;

  void addProduct(Product product) {
    _products.add(product);
    notifyListeners();
  }

  void removeProduct(Product product) {
    _products.remove(product);
    notifyListeners();
  }
}