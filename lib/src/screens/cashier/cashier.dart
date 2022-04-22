import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:toten_prototipo/src/widgets/action_button.dart';

import '../../theme/colors.dart';
import '../../widgets/action_button.dart';

class Cashier extends StatefulWidget {
  const Cashier({Key? key}) : super(key: key);

  @override
  State<Cashier> createState() => _CashierState();
}

class _CashierState extends State<Cashier> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      // fazer um getAppBar
      appBar: AppBar(
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
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    return ListView(
      children: [
        // Conta os itens + mostra subtotal (nota  + valores)
        // Padding(
        //   padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        //   child: Container(
        //     width: MediaQuery.of(context).size.width * 0.35,
        //     height: MediaQuery.of(context).size.height * 0.75,
        //     decoration: const BoxDecoration(
        //       color: white,
        //       borderRadius: BorderRadius.only(
        //         topRight: Radius.circular(20),
        //         bottomRight: Radius.circular(20),
        //       ),
        //     ),
        //     child: ListView(
        //       children: [
        //         Row(
        //           children: const [
        //             Padding(
        //               padding: EdgeInsets.all(15.0),
        //               child: Icon(
        //                 FontAwesomeIcons.cartShopping,
        //                 color: blue,
        //                 size: 30,
        //               ),
        //             ),
        //             Text(
        //               "0 item",
        //               style: TextStyle(
        //                   color: grey,
        //                   fontWeight: FontWeight.bold,
        //                   fontSize: 20),
        //             ),
        //           ],
        //         ),
        //         const Divider(
        //           color: grey,
        //           thickness: 1,
        //         ),
        //         Padding(
        //           padding: EdgeInsets.only(
        //               top: MediaQuery.of(context).size.height * 0.65),
        //           child: Column(
        //             children: [
        //               const Divider(
        //                 color: grey,
        //                 thickness: 1,
        //               ),
        //               // BOTÕES DE SUBIR E DESCER PRODUTOS NA TELA
        //               Row(
        //                 crossAxisAlignment: CrossAxisAlignment.end,
        //                 children: [
        //                   IconButton(
        //                     onPressed: () {},
        //                     icon: const FaIcon(FontAwesomeIcons.circleDown),
        //                     color: black,
        //                     iconSize: 75,
        //                   ),
        //                   const SizedBox(
        //                     width: 20,
        //                   ),
        //                   IconButton(
        //                     onPressed: () {},
        //                     icon: const FaIcon(FontAwesomeIcons.circleUp),
        //                     color: black,
        //                     iconSize: 75,
        //                   ),
        //                   const SizedBox(
        //                     width: 20,
        //                   ),
        //                   // SUBTOTAL + VALOR ABAXO
        //                   Padding(
        //                     padding: const EdgeInsets.only(left: 70),
        //                     child: Column(
        //                       children: const [
        //                         Text(
        //                           "SUBTOTAL",
        //                           style: TextStyle(
        //                               color: grey,
        //                               fontSize: 35,
        //                               fontWeight: FontWeight.bold),
        //                         ),
        //                         Text(
        //                           "R\$ 0,00",
        //                           style: TextStyle(
        //                               color: blue,
        //                               fontSize: 35,
        //                               fontWeight: FontWeight.bold),
        //                         ),
        //                       ],
        //                     ),
        //                   )
        //                 ],
        //               ),
        //             ],
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        Padding(
          padding: const EdgeInsets.only(left: 300),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Icon(
                FontAwesomeIcons.barcode,
              ),
              const Text("Continue passando os produtos no leitor ou"),
              ActionButton(text: "Digite o código de Barras", onTap: () {})
            ],
          ),
        )
      ],
      scrollDirection: Axis.horizontal,
    );
  }
}
