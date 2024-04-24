// common/get_default_products.dart

import 'package:shoooooping_provider_app/common/domain/product.dart';

List<Product> getDefaultProducts() {
  return [
    Product(
      'Apple iPhone 13',
      'Neuestes Modell des iPhones mit A15 Bionic Chip',
      899.99,
    ),
    Product(
      'Samsung Galaxy S21',
      'Flaggschiff-Smartphone von Samsung mit Snapdragon 888',
      799.99,
    ),
    Product(
        'Google Pixel 6',
        'Google Smartphone mit dem neuesten Android Betriebssystem',
        599.99),
    Product(
      'Huawei P50 Pro',
      'High-End-Smartphone von Huawei mit Leica-Kamera',
      999.99,
    ),
    Product(
      'OnePlus 9 Pro',
      'OnePlus Flaggschiff-Smartphone mit Hasselblad-Kamera',
      969.99,
    ),
    Product(
      'Xiaomi Mi 11',
      'Xiaomi Smartphone mit Snapdragon 888 und 108MP Kamera',
      749.99,
    ),
    Product(
      'Sony Xperia 1 III',
      'Sony Smartphone mit 4K HDR OLED Display',
      1299.99,
    ),
    Product(
      'Nokia 9 PureView',
      'Nokia Smartphone mit fünf Kameraobjektiven',
      599.99,
    ),
    Product(
      'LG V60 ThinQ',
      'LG Smartphone mit Dual Screen Option',
      799.99,
    ),
    Product(
      'Motorola Edge Plus',
      'Motorola Flaggschiff-Smartphone mit großem Akku',
      999.99,
    ),
  ];
}