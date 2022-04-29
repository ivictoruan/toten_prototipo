import 'package:flutter/material.dart';
import 'package:toten_prototipo/src/widgets/buttons/action_button.dart';
import 'package:toten_prototipo/src/widgets/custom_text_field.dart';

import '../../theme/colors.dart';
import '../cashier/cashier.dart';

class Cpf extends StatelessWidget {
  // 1536 x 840.4
  const Cpf({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    void navigateToCashier() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const Cashier(),
        ),
      );
    }

    return Scaffold(
      backgroundColor: grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: _height * 0.118,
            ),
            Text(
              "Deseja informar seu CPF ou CNPJ?",
              style: TextStyle(
                  fontSize: _width * 0.026, fontWeight: FontWeight.w600),
            ),

            // INPUT CPF
            CustomTextField(
              width: _width * 0.651,
            ),
            SizedBox(
              height: _height * 0.118,
            ),
            SizedBox(
              height: _height * 0.059,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: _width * 0.300,
                  height: _height * 0.083,
                  child: ActionButton(
                    icon: Icons.close,
                    text: "Prefiro não informar",
                    onTap: navigateToCashier,
                    color: red,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
