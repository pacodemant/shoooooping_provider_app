// features/shoooooping_cart/presentation/shoooooping_cart_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoooooping_provider_app/common/domain/cart_provider.dart';

class ShooooopingCartScreen extends StatelessWidget {
  const ShooooopingCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cartProvider = Provider.of<CartProvider>(context);
    var selectedProducts = cartProvider.selectedProducts;
    bool noProducts = selectedProducts.isEmpty;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: noProducts
          ? const Center(
              child: Text(
                'No items in the cart',
                style: TextStyle(fontSize: 24),
              ),
            )
          : ListView.builder(
              itemCount: selectedProducts.length,
              itemBuilder: (context, index) {
                var product = selectedProducts[index];
                return ListTile(
                  title: Text(product.name),
                  subtitle: Text(product.description),
                  trailing: IconButton(
                    icon: const Icon(Icons.remove_shopping_cart),
                    onPressed: () {
                      // Hier kannst du die Funktionalität zum Entfernen eines Produkts aus dem Warenkorb implementieren
                    },
                  ),
                );
              },
            ),
    );
  }
}
