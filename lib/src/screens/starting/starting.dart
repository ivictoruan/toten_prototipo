import 'package:flutter/material.dart';
import 'package:toten_prototipo/src/json/constant.dart';
import 'package:toten_prototipo/src/widgets/action_button.dart';
import 'package:toten_prototipo/src/widgets/custom_carousel.dart';

class Starting extends StatefulWidget {
  const Starting({Key? key}) : super(key: key);

  @override
  State<Starting> createState() => _StartingState();
}

class _StartingState extends State<Starting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      // ),
      body: getBody(),
    );
  }

  Widget getBody() {
    final double _height = MediaQuery.of(context).size.height;
    // final double _width = MediaQuery.of(context).size.width;

    return ListView(padding: EdgeInsets.zero, children: [
      // const SizedBox(height: 20),
      SizedBox(height: _height * 0.7, child: CustomCarousel(items: promotions)),
      SizedBox(height: _height * 0.1),
      SizedBox(
          // width: _width * 0.02,
          child: ActionButton(
              icon: Icons.touch_app_outlined,
              text: "TOQUE AQUI PARA INICIAR",
              onTap: () {})),
      const SizedBox(height: 40), 
    ]);
  }
}
