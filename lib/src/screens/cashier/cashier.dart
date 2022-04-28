import 'package:flutter/material.dart';
import 'package:toten_prototipo/src/screens/cashier/product_info/product_info.dart';
import 'package:toten_prototipo/src/theme/colors.dart';

import 'widgets/cart/cart.dart';
import 'widgets/app_bar/custom_app_bar.dart';

class Cashier extends StatefulWidget {
  const Cashier({Key? key}) : super(key: key);

  @override
  State<Cashier> createState() => _CashierState();
}

class _CashierState extends State<Cashier> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey,
      appBar: customAppBar(),
      body: getBody(context),
    );
  }
}

getBody(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: const [
      // CARRINHO
      Cart(),
      // MOSTRA INFORMAÇÕES
      ProductInfo(),
    ],
  );
}
