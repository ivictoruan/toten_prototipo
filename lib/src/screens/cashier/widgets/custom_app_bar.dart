
  // APPBAR
  import 'package:flutter/material.dart';

import '../../../theme/colors.dart';

PreferredSizeWidget customAppBar() {
    return AppBar(
      backgroundColor: blue,
      centerTitle: true,
      title: const Text(
        "CAIXA ABERTO",
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 25, top: 15),
          child: Text(
            "CAIXA 001",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }