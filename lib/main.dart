// main.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoooooping_provider_app/common/domain/cart_provider.dart';
import 'package:shoooooping_provider_app/common/domain/product_provider.dart';
import 'package:shoooooping_provider_app/features/shoooooping_cart/presentation/shoooooping_cart_screen.dart';
import 'package:shoooooping_provider_app/shoooooping_app.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProductProvider()),
        ChangeNotifierProvider(create: (context) => CartProvider()), // Hier wird der CartProvider hinzugefügt
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => const ShooooopingApp(),
          '/cart': (context) => const ShooooopingCartScreen(), // Definiere die Route für den Cart-Screen
        },
      ),
    ),
  );
}