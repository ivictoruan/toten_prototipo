import 'package:flutter/material.dart';
import 'package:toten_prototipo/src/widgets/buttons/action_button.dart';
import 'package:toten_prototipo/src/widgets/custom_text_field.dart';

import '../../theme/colors.dart';
import '../cashier/cashier.dart';

class Cpf extends StatelessWidget {
  const Cpf({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
            const SizedBox(
              height: 100,
            ),
            const Text(
              "Deseja informar seu CPF ou CNPJ?",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
            ),

            // INPUT CPF
            const CustomTextField(
              width: 1000,
            ),
            const SizedBox(
              height: 100,
            ),
            const SizedBox(height: 50),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 462,
                  height: 70,
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
