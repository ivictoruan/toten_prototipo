import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:toten_prototipo/src/screens/cashier/widgets/products.dart';
import 'package:toten_prototipo/src/theme/colors.dart';
import 'package:toten_prototipo/src/widgets/action_button.dart';

import 'widgets/custom_app_bar.dart';

class Cashier1 extends StatefulWidget {
  const Cashier1({Key? key}) : super(key: key);

  @override
  State<Cashier1> createState() => _Cashier1State();
}

class _Cashier1State extends State<Cashier1> {
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
      // CARRINHO
      Container(
        height: _height * 0.9,
        width: _width * 0.25,
        decoration: const BoxDecoration(
          color: white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
          boxShadow: [
            BoxShadow(
              color: grey,
              blurRadius: 5.0,
              // offset: Offset(0, 0)
            )
          ],
        ),
        child: Column(
          children: [
            // CARRINHO + Nº DE ITENS
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(_height * 0.015),
                  child: const Icon(
                    FontAwesomeIcons.cartShopping,
                    color: blue,
                    size: 30,
                  ),
                ),
                const Text(
                  "Meus itens (0)",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
              ],
            ),
            const Divider(
              color: grey,
              thickness: 1,
              height: 1,
            ),
            // const Products(),
            const Divider(
              color: grey,
              thickness: 1,
              height: 1,
            ),
          ],
        ),
      ),

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
