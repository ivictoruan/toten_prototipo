import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:toten_prototipo/src/theme/colors.dart';
import 'package:toten_prototipo/src/widgets/buttons/action_button.dart';

import 'widgets/cart/cart.dart';
import 'widgets/custom_app_bar.dart';

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
  final double _height = MediaQuery.of(context).size.height;
  final double _width = MediaQuery.of(context).size.width;
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      // CART
      const Cart(),

      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          Container(
            height: _height * 0.648,
            width: _width * 0.7,
            decoration: const BoxDecoration(
              color: white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ),
              boxShadow: [
                BoxShadow(
                  color: grey,
                  blurRadius: 5.0,
                )
              ],
            ),
            // MOSTRADOR DE ITENS
            child: Column(
              children: [
                const SizedBox(height: 50),
                SizedBox(
                  width: 334,
                  height: 231,
                  child: Center(
                    child: Lottie.network(
                        "https://assets7.lottiefiles.com/private_files/lf30_kqinim0b.json"),
                  ),
                ),
                const Text(
                  "Passe o código do produto pelo leitor",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ActionButton(
                  icon: Icons.search, text: "Pesquisar produto", onTap: () {}),
              SizedBox(
                width: _width * 0.05,
              ),
              ActionButton(
                  icon: FontAwesomeIcons.barcode,
                  text: "Digitar  o código",
                  onTap: () {}),
              SizedBox(
                width: 150,
                // height: 90,
                child: ActionButton(
                    icon: Icons.help_center_outlined,
                    text: "Ajuda",
                    onTap: () {}),
              )
            ],
          ),
        ],
      ),
    ],
  );
}
