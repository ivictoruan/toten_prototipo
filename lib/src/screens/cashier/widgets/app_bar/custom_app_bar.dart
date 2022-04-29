// APPBAR
import 'package:flutter/material.dart';

import '../../../../theme/colors.dart';

PreferredSizeWidget customAppBar(context) {
  final double _width = MediaQuery.of(context).size.width;
  return AppBar(
    backgroundColor: blue,
    centerTitle: true,
    title: Text(
      "CAIXA ABERTO",
      style: TextStyle(fontSize: _width * 0.026, fontWeight: FontWeight.bold),
    ),
    actions: [
      Padding(
        padding: EdgeInsets.only(right: _width * 0.01627, top: _width * 0.0098),
        child: Text(
          "CAIXA 001",
          style:
              TextStyle(fontSize: _width * 0.013, fontWeight: FontWeight.bold),
        ),
      ),
    ],
  );
}
