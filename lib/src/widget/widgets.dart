// ignore_for_file: prefer_const_constructors

import 'package:catalog_provider/src/model/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ColorBox extends StatelessWidget {
  final Color color;
  const ColorBox({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      color: color,
    );
  }
}

 