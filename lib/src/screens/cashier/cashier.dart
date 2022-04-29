import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:toten_prototipo/src/screens/cashier/product_info/product_info.dart';
import 'package:toten_prototipo/src/screens/cashier/widgets/enter_barcode/enter_barcode.dart';
// import 'package:toten_prototipo/src/screens/cashier/product_info/test.dart';
import 'package:toten_prototipo/src/theme/colors.dart';

import '../../widgets/buttons/action_button.dart';
import '../../widgets/buttons/small_action_button.dart';
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ActionButton(
                    icon: Icons.search,
                    text: "Pesquisar produto",
                    onTap: () => _onAlertWithCustomContentPressed(context)),
                SizedBox(
                  width: _width * 0.03,
                ),
                ActionButton(
                  icon: FontAwesomeIcons.barcode,
                  text: "Digitar  o código",
                  onTap: () {},
                ),
                SizedBox(
                  width: _width * 0.0119,
                ),
                SmallActionButton(
                  text: "Ajuda?",
                  onTap: () {},
                  color: blue,
                  icon: Icons.help_center_outlined,
                ),
                // SizedBox(
                //   width: _width * 0.10,
                //   // height: 90,
                //   child: ActionButton(
                //       icon: Icons.help_center_outlined,
                //       text: "Ajuda",
                //       onTap: () {}),
                // )
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

// Alert custom content
_onAlertWithCustomContentPressed(context) {
  Alert(
      context: context,
      title: "LOGIN",
      content: Column(
        children: <Widget>[EnterBarcode()],
      ),
      buttons: [
        DialogButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            "LOGIN",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        )
      ]).show();
}
