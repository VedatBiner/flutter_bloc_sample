import 'package:flutter/material.dart';
import 'package:flutter_bloc_sample/screens/cart_screen.dart';
import 'package:flutter_bloc_sample/screens/product_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: { // Açılış Sayfası seçenekleri (map formatı)
        "/" : (BuildContext context) => const ProductListScreen(),
        "/cart" : (BuildContext context) => const CartScreen(),
      },
      initialRoute: "/", // Açılış sayfası
    );
  }

}
