import 'package:flutter/material.dart';
import 'package:toten_prototipo/src/json/constant.dart';
import 'package:toten_prototipo/src/screens/cpf/cpf.dart';
import 'package:toten_prototipo/src/widgets/buttons/action_button.dart';
import 'package:toten_prototipo/src/widgets/custom_carousel.dart';

/// Página voltada para o início
/// Esta tela é o primeiro contato que o usuário entratá em contato
/// Existem promoções passando em um determinado tempo

class Starting extends StatefulWidget {
  const Starting({Key? key}) : super(key: key);

  @override
  State<Starting> createState() => _StartingState();
}

class _StartingState extends State<Starting> {
  void navigateToCpf() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const Cpf(),
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
    final double _width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: _height,
      width: _width,
      child: Column(
        // padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: _height * 0.7,
            child: CustomCarousel(items: promotions),
          ),
          SizedBox(height: _height * 0.1),
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: _width * 0.325,
                  height: _height * 0.155,
                  child: ActionButton(
                    icon: Icons.touch_app_outlined,
                    text: "TOQUE AQUI PARA INICIAR",
                    onTap: navigateToCpf,
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          )
        ],
      ),
    );
  }
}
