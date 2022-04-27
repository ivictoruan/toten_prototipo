import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../theme/colors.dart';
import '../cart/itens.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;
    return Container(
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
          // ITENS
          const Itens(),
          // DIVIDER + BOTÕES
          const Divider(
            color: grey,
            thickness: 1,
            height: 1,
          ),
          const SizedBox(
            height: 10,
          ),

          // BOTÃO DE SUBIR E DESCER
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            IconButton(
              onPressed: () {},
              icon: const FaIcon(FontAwesomeIcons.circleDown),
              color: black.withOpacity(0.7),
              iconSize: 75,
            ),
            const SizedBox(
              width: 20,
            ),
            IconButton(
              onPressed: () {},
              icon: const FaIcon(FontAwesomeIcons.circleUp),
              color: black.withOpacity(0.7),
              iconSize: 75,
            ),
            const SizedBox(
              width: 20,
            ),
          ]),

          // SUBTOTAL + VALOR ABAXO
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "SUBTOTAL",
                style: TextStyle(
                    color: black.withOpacity(0.7),
                    fontSize: 35,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "R\$ 0,00",
                style: TextStyle(
                    color: blue, fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 58.4,
          ),
          // ICON + FINALIZAR E PAGAR
          Container(
            decoration: BoxDecoration(
              color: black.withOpacity(0.6),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(25),
              ),
            ),
            child: Row(
              children: const [
                Icon(
                  Icons.payment,
                  size: 70,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "FINALIZAR E PAGAR",
                  style: TextStyle(
                      color: white, fontSize: 25, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
