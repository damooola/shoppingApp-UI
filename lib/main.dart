import 'package:fashion_shop_app/pages/cart_page.dart';
import 'package:fashion_shop_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/item_page.dart';

void main() {
  runApp(const FashionShopApp());
}

class FashionShopApp extends StatelessWidget {
  const FashionShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: appTheme,
      routes: {
        // "/": (context) => const HomePage(),
        "/cart_page": (context) => const CartPage(),
        "/item_page": (context) => const ItemPage()
      },
    );
  }
}
