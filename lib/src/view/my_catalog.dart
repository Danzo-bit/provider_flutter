// ignore_for_file: prefer_const_constructors

import 'package:catalog_provider/src/view/cart.dart';
import 'package:catalog_provider/src/data/my_list_items.dart';
import 'package:flutter/material.dart';

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
      body: ListView(
            children: [...MyListItem.items],
          )
    );
  }
}
