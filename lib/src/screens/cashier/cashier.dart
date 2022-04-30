import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:toten_prototipo/src/screens/cashier/product_info/product_info.dart';
import 'package:toten_prototipo/src/theme/colors.dart';

import '../../widgets/buttons/action_button.dart';
import '../../widgets/buttons/small_action_button.dart';
import 'widgets/cart/cart.dart';
import 'widgets/app_bar/custom_app_bar.dart';
import 'widgets/enter_barcode/enter_barcode.dart';

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
      appBar: customAppBar(context),
      body: getBody(context),
    );
  }
}

getBody(context) {
  // void digitarCodigo() {
  //   Navigator.of(context).push(
  //     MaterialPageRoute(
  //       builder: (context) => const Test(),
  //     ),
  //   );
  // }

  final double _width = MediaQuery.of(context).size.width;
  final double _height = MediaQuery.of(context).size.height;
  return Padding(
    padding: const EdgeInsets.symmetric(
      vertical: 10,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // CARRINHO
        const Cart(),
        // MOSTRA INFORMAÇÕES
        // ProductInfo(),
        Column(
          children: [
            SizedBox(
              height: _height * 0.0178,
            ),
            // const Test(),
            const ProductInfo(),
            SizedBox(
              height: _height * 0.0178,
            ),
            // BOTÕES DE PESQUISAR, DIGITAR CÓDIGO E AJUDA
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ActionButton(
                  icon: Icons.search,
                  text: "Pesquisar produto",
                  onTap: () {},
                ),
                SizedBox(
                  width: _width * 0.03,
                ),
                ActionButton(
                  icon: FontAwesomeIcons.barcode,
                  text: "Digitar  o código",
                  onTap: () => _onAlertEnterBarcode(context),
                ),
                SizedBox(
                  width: _width * 0.0119,
                ),
                SmallActionButton(
                  text: "Ajuda?",
                  onTap: () => _onAlertHelp(context),
                  color: blue,
                  icon: Icons.help_center_outlined,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

//  custom content _onAlertSearchProduct
_onAlertHelp(context) {
  // componentizar este método.
  Alert(
    context: context,
    title: "Solicitando ajuda ",
    style: const AlertStyle(
      titleStyle:
          TextStyle(color: blue, fontWeight: FontWeight.w600, fontSize: 60),
    ),
    content: Container(
      width: 830,
      height: 450,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(61)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(
            Icons.person,
            size: 110,
            color: black.withOpacity(0.63),
          ),
          const Text(
            "por favor, aguarde até que o\n  atendente chegue",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: black,
              fontSize: 37,
            ),
          ),
          Center(
            child: Lottie.network(
                "https://assets4.lottiefiles.com/packages/lf20_omullrhw.json",
                width: 100,
                height: 120),
          ),
        ],
      ),
    ),
    buttons: [
      DialogButton(
        width: 180,
        height: 66,
        color: red,
        onPressed: () => Navigator.pop(context),
        child: const Text(
          "Cancelar",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    ],
  ).show();
} // FONTE: https://github.com/RatelHub/rflutter_alert/blob/master/example/lib/main.dart

_onAlertEnterBarcode(context) {
  final double _width = MediaQuery.of(context).size.width;
  // componentizar este método.
  Alert(
    context: context,
    title: "Digite o código indicado no produto e pressione ✅ ",
    content: Column(
      children: const <Widget>[
        EnterBarcode(),
      ],
    ),
    buttons: [
      DialogButton(
        color: blue,
        onPressed: () => Navigator.pop(context),
        child: Text(
          "Cancelar",
          style: TextStyle(color: Colors.white, fontSize: _width * 0.013),
        ),
      ),
    ],
  ).show();
}
