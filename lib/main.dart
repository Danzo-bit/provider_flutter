import 'package:catalog_provider/src/model/cart_model.dart';
import 'package:catalog_provider/src/view/my_catalog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (BuildContext context) {
        return CartModel();
      },
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catalog',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const Catalog(),
    );
  }
}
