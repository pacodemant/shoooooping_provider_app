// common/presentation/shoooooping_cart_button.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoooooping_provider_app/common/domain/cart_provider.dart';

class ShooooopingCartButton extends StatelessWidget {
  const ShooooopingCartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CartProvider>(
      builder: (context, cartProvider, _) {
        return Stack(
          children: [
            IconButton(
              icon: const Icon(Icons.shopping_cart_sharp),
              onPressed: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            if (cartProvider.selectedProducts.isNotEmpty)
              Positioned(
                right: 0,
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 10,
                  child: Text(
                    cartProvider.selectedProducts.length.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
