// features/shoooooping_details/shoooooping_details_screen.dart

import 'package:flutter/material.dart';
import 'package:shoooooping_provider_app/common/domain/product.dart';
import 'package:shoooooping_provider_app/common/presentation/shoooooping_cart_button.dart';

class ShooooopingDetailsScreen extends StatelessWidget {
  final Product product;

  const ShooooopingDetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name), // Name des Produkts als Titel der AppBar
        actions: const [
          ShooooopingCartButton(), // CartButton in der AppBar
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(product.name), // Produktname
            Text(product.description), // Produktbeschreibung
            Text('${product.price} €'), // Preis des Produkts
            ElevatedButton(
              onPressed: () {
                // Hinzufügen des Produkts zum Warenkorb
                // Hier fehlt noch die entsprechende Logik, um das Produkt zum Warenkorb hinzuzufügen
              },
              child: const Text('Zum Warenkorb hinzufügen'),
            ),
          ],
        ),
      ),
    );
  }
}
