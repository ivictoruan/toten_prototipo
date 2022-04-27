import 'package:flutter/material.dart';

import '../../theme/colors.dart';

class Cpf extends StatelessWidget {
  const Cpf({Key? key}) : super(key: key);
  // void navigateToCashier() {
  //   Navigator.of(context).push(
  //     MaterialPageRoute(
  //       builder: (context) => const Cashier(),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Deseja informar seu CPF ou CNPJ?",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              width: 1000,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: white,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                    // fillColor: grey,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
