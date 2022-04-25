import 'package:flutter/material.dart';
import 'package:toten_prototipo/src/json/constant.dart';
import 'package:toten_prototipo/src/widgets/action_button.dart';
import 'package:toten_prototipo/src/widgets/custom_carousel.dart';

import '../cashier/cashier.dart';

/// Página voltada para o início
/// Esta tela é o primeiro contato que o usuário entratá em contato
/// Existem promoções passando em um determinado tempo

class Starting extends StatefulWidget {
  const Starting({Key? key}) : super(key: key);

  @override
  State<Starting> createState() => _StartingState();
}

class _StartingState extends State<Starting> {
  // void navigateToIntroduction() {
  //   Navigator.of(context).push(
  //     MaterialPageRoute(
  //       builder: (context) => const Intructions(),
  //     ),
  //   );
  // }

  void navigateToCashier() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const Cashier(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    final double _height = MediaQuery.of(context).size.height;

    return ListView(
      padding: EdgeInsets.zero,
      children: [
        SizedBox(
          height: _height * 0.7,
          child: CustomCarousel(items: promotions),
        ),
        SizedBox(height: _height * 0.1),
        SizedBox(
          child: ActionButton(
            icon: Icons.touch_app_outlined,
            text: "TOQUE AQUI PARA INICIAR",
            onTap: navigateToCashier,
          ),
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
