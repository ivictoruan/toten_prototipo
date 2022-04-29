import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../theme/colors.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // METHODS
    // void enterBarcode() {
    //   Navigator.of(context).pushReplacement(
    //     MaterialPageRoute(
    //       builder: (context) => const EnterBarcode(),
    //     ),
    //   );
    // }

    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return Material(
      elevation: 15,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(25),
        bottomLeft: Radius.circular(25),
      ),
      color: blue,
      child: Container(
        height: _height * 0.648,
        width: _width * 0.7,
        decoration: const BoxDecoration(
          color: white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            bottomLeft: Radius.circular(25),
          ),
          boxShadow: [
            BoxShadow(
              color: grey,
              blurRadius: 5.0,
            )
          ],
        ),
        // MOSTRADOR DE ITENS
        child: Column(
          children: [
            SizedBox(height: _height * 0.0594),
            SizedBox(
              width: _width * 0.2175,
              height: _height * 0.2748,
              child: Center(
                child: Lottie.network(
                    "https://assets7.lottiefiles.com/private_files/lf30_kqinim0b.json"),
              ),
            ),
            Text(
              "Passe o código do produto pelo leitor",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: _width * 0.02278),
            ),
          ],
        ),
      ),
    );
  }
}
