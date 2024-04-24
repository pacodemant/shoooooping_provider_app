// features/shoooooping_cart/presentation/shoooooping_cart_item.dart
import 'package:flutter/material.dart';

class ShooooopingCartItem extends StatelessWidget {
  const ShooooopingCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text("Product Name"),
      subtitle: const Text("Product Description"),
      trailing: IconButton(
        icon: const Icon(Icons.remove_shopping_cart),
        onPressed: () => {},
      ),
    );
  }
}
