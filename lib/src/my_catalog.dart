// ignore_for_file: prefer_const_constructors

import 'package:catalog_provider/src/cart.dart';
import 'package:catalog_provider/src/cart_model.dart';
import 'package:catalog_provider/src/my_list_items.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Catalog extends StatelessWidget {
  const Catalog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Cart(),
                  ),
                );
              },
              icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: Consumer<CartModel>(
        builder: (BuildContext context, cart, Widget? child) {
          return ListView(
            children: [...MyListItem.items],
          );
        },
      ),
    );
  }
}
