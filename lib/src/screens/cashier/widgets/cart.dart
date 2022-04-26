
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../theme/colors.dart';

/// Conta os itens + mostra subtotal (nota  + valores)

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
    return Padding(
      padding: EdgeInsets.only(top: _height * 0.02, bottom: _height * 0.20),
      child: Container(
        padding: EdgeInsets.only(top: _height * 0.02),
        width: _width * 0.35,
        height: _height * 0.35,
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
                      color: grey, fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            const Divider(
              color: grey,
              thickness: 1,
              height: 1,
            ),
            // BOTÕES DE SUBIR E DESCER PRODUTOS NA TELA + "SUBTOTAL" R$ 0,00
            Padding(
              padding:
                  EdgeInsets.only(top: _height * 0.45),
              child: Column(
                children: [
                  const Divider(
                    color: grey,
                    thickness: 1,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const FaIcon(FontAwesomeIcons.circleDown),
                        color: black,
                        iconSize: 75,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const FaIcon(FontAwesomeIcons.circleUp),
                        color: black,
                        iconSize: 75,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      // SUBTOTAL + VALOR ABAXO
                      Padding(
                        padding: EdgeInsets.only(left: _width * 0.05),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              "SUBTOTAL",
                              style: TextStyle(
                                  color: grey,
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "R\$ 0,00",
                              style: TextStyle(
                                  color: blue,
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
