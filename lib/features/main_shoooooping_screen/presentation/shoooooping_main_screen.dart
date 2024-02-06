import 'package:flutter/material.dart';
import 'package:shoooooping_provider_app/common/presentation/shoooooping_cart_button.dart';

class ShooooopingMainScreen extends StatelessWidget {
  const ShooooopingMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Provider Shoooooping App'),
          actions: const [ShooooopingCartButton()],
        ),
        body: const Text("Producs:\nFirst\nSecond\nThird"));
  }
}
