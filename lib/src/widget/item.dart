// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:catalog_provider/src/model/cart_model.dart';
import 'package:catalog_provider/src/widget/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Item extends StatelessWidget {
  final String title;
  const Item({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: (context, cart, child) => Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            ColorBox(color: Colors.black),
            SizedBox(
              width: 12,
            ),
            Expanded(child: Text(title)),
            TextButton(
                onPressed: () {
                  cart.add(this);
                },
                child: 
                cart.items.contains(this) ?
                Icon(Icons.done):
                Text('Add'))
          ],
        ),
      ),
    );
  }
}
