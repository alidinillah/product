import 'package:flutter/material.dart';
import 'package:product/screen/product_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProductScreen(),
    );
  }
}
