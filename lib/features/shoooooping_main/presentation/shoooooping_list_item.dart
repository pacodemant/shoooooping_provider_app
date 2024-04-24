// features/shoooooping_main/presentation/shoooooping_list_item.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoooooping_provider_app/common/domain/cart_provider.dart';
import 'package:shoooooping_provider_app/common/domain/product.dart';
import 'package:shoooooping_provider_app/features/shoooooping_details/shoooooping_details_screen.dart';

class ShooooopingListItem extends StatelessWidget {
  final Product product;

  const ShooooopingListItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(product.name), // Produktname
      subtitle: Text(product.description), // Produktbeschreibung
      trailing: IconButton(
        icon: const Icon(Icons.add_shopping_cart_sharp),
        onPressed: () {
          Provider.of<CartProvider>(context, listen: false).addToCart(product);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('${product.name} wurde zum Warenkorb hinzugefügt')),
          );
        },
      ),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ShooooopingDetailsScreen(product: product), // Hier wird das Product übergeben
          ),
        );
      },
    );
  }
}