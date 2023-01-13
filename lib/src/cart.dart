// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:catalog_provider/src/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        color: Colors.grey[400],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Consumer<CartModel>(
            builder: (context, cart, child) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Column(
                  children: [
                    ...cart.items
                        .map((e) => Container(
                            padding: const EdgeInsets.all(8),
                            child: Text('* ' + e.title)))
                        .toList()
                  ],
                )),
                Divider(thickness: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(cart.totalPrice.toString()),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Buy'),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
