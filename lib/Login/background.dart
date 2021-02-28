import 'package:flutter/material.dart';

Widget backGround() {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: [0.2, 0.5, 0.8],
        colors: [
          Color(0xfff7f7f7),
          Color(0xfffffffc),
          Color(0xfffff1e6),
        ],
      ),
    ),
  );

}