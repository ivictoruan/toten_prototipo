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
    return Material(
      elevation: 15,
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(25),
        bottomRight: Radius.circular(25),
      ),
      child: Container(
        height: _height * 0.9,
        width: _width * 0.28,
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // CARRINHO + Nº DE ITENS
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(_height * 0.015),
                  child: Icon(
                    FontAwesomeIcons.cartShopping,
                    color: blue,
                    size: _width * 0.019,
                  ),
                ),
                Text(
                  "Meus itens (0)",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: _width * 0.013),
                ),
              ],
            ),
            const Divider(
              color: grey,
              thickness: 3,
              height: 1,
            ),
            // ITENS
            const Itens(),
            // DIVIDER + BOTÕES
            const Divider(
              color: grey,
              thickness: 3,
              height: 1,
            ),
            SizedBox(
              height: _height * 0.011,
            ),

            // BOTÃO DE SUBIR E DESCER
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              IconButton(
                onPressed: () {},
                icon: const FaIcon(FontAwesomeIcons.circleDown),
                color: black.withOpacity(0.7),
                iconSize: _width * 0.0488,
              ),
              SizedBox(
                width: _width * 0.013,
              ),
              IconButton(
                onPressed: () {},
                icon: const FaIcon(FontAwesomeIcons.circleUp),
                color: black.withOpacity(0.7),
                iconSize: _width * 0.0488,
              ),
              SizedBox(
                width: _width * 0.013,
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
                      fontSize: _width * 0.022,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: _width * 0.0065,
                ),
                Text(
                  "R\$ 0,00",
                  style: TextStyle(
                      color: blue,
                      fontSize: _width * 0.0227,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: _height * 0.06949,
            ),
            // ICON + FINALIZAR E PAGAR
            InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: black.withOpacity(0.6),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(_width * 0.016),
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.payment,
                      size: _width * 0.0455,
                    ),
                    SizedBox(
                      width: _width * 0.013,
                    ),
                    Text(
                      "FINALIZAR E PAGAR",
                      style: TextStyle(
                          color: white,
                          fontSize: _width * 0.01627,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
