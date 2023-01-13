// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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

 