// features/shoooooping_main/presentation/shoooooping_main_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoooooping_provider_app/common/domain/product_provider.dart';
// Importiere den CartProvider
import 'package:shoooooping_provider_app/features/shoooooping_main/presentation/shoooooping_list_item.dart';
// Importiere den CartScreen

class ShooooopingMainScreen extends StatelessWidget {
  const ShooooopingMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var products = Provider.of<ProductProvider>(context).products;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider Shoooooping App'),
        actions: const [
          ShooooopingCartButton(), // Verwende den Cart-Button
        ],
      ),
body: ListView.builder(
  itemCount: products.length,
  itemBuilder: (context, index) {
    return ShooooopingListItem(
      product: products[index], // Übergib das Produkt hier
      key: ValueKey(index),
    );
  },
),

    );
  }
}

class ShooooopingCartButton extends StatelessWidget {
  const ShooooopingCartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.shopping_cart_sharp),
      onPressed: () {
        Navigator.pushNamed(context, '/cart'); // Navigiere zum Cart-Screen über den Provider
      },
    );
  }
}
