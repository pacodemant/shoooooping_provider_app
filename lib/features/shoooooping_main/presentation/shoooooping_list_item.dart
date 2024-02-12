import 'package:flutter/material.dart';

class ShooooopingListItem extends StatelessWidget {
  const ShooooopingListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text("Product Name"),
      subtitle: const Text("Product Description"),
      trailing: IconButton(
        icon: const Icon(Icons.add_shopping_cart_sharp),
        onPressed: () => {},
      ),
      onTap: () {},
    );
  }
}
