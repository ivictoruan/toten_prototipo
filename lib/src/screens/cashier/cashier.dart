import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toten_prototipo/src/screens/cashier/widgets/cart.dart';
import 'package:toten_prototipo/src/theme/colors.dart';

import '../../widgets/small_action_button.dart';

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
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  // APPBAR
  PreferredSizeWidget getAppBar() {
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

  // BODY
  Widget getBody() {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        // CARRINHO (LEFT-TOP)
        const Positioned(
          top: 10,
          bottom: 10,
          child: Cart(),
        ),
        // BOTÃO DE AJUDA(LEFT-BOTTOM)
        Positioned(
          bottom: _width * 0.01,
          width: 125,
          child: SmallActionButton(
            icon: Icons.help_center_outlined,
            onTap: () {},
            text: "AJUDA",
            color: blue,
          ),
        ),
        // CÓDIGO DE BARRAS/ICON (CENTER-RIGHT)
        const Positioned(
          top: 128,
          left: 983,
          child: Icon(
            FontAwesomeIcons.barcode,
            color: black,
            size: 120,
          ),
        ),
        // TEXTO "PASSE O CÓDIGO.." (CENTER-BOTTOM)
        const Positioned(
          top: 250,
          left: 890,
          child: Text(
            "Passe o código do\nproduto pelo leitor",
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.w600, letterSpacing: 1.2),
          ),
        ),
        // BOTÃO HORTIFRUT (CENTER-LEFT)
        Positioned(
          // bottom: _width * 0.01,
          top: 500,
          // left: 786,
          // bottom: 506,
          right: 350,
          width: 290,
          child: SmallActionButton(
            icon: Icons.help_center_outlined,
            onTap: () {},
            text: "PRODUTO HORTIFRUTI",
            color: blue,
          ),
        ),
        // BOTÃO "DIGITAR O CÓDIGO" (CENTER-RIGHT)
        // WIDGET QUE MEDE O PESO (CENTER LEFT - BOTTOM)
        // FINALIZAR E PAGAR (RIGHT-BOTTOM)
      ],
    );
  }
}
