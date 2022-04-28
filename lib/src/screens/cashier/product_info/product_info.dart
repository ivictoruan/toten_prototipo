import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

import '../../../theme/colors.dart';
import '../../../widgets/buttons/action_button.dart';

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15,
        ),
        Container(
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
              const SizedBox(height: 50),
              SizedBox(
                width: 334,
                height: 231,
                child: Center(
                  child: Lottie.network(
                      "https://assets7.lottiefiles.com/private_files/lf30_kqinim0b.json"),
                ),
              ),
              const Text(
                "Passe o código do produto pelo leitor",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ActionButton(
                icon: Icons.search, text: "Pesquisar produto", onTap: () {}),
            SizedBox(
              width: _width * 0.03,
            ),
            ActionButton(
              icon: FontAwesomeIcons.barcode,
              text: "Digitar  o código",
              onTap: () {},
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 165,
              // height: 90,
              child: ActionButton(
                  icon: Icons.help_center_outlined,
                  text: "Ajuda",
                  onTap: () {}),
            )
          ],
        ),
      ],
    );
  }
}

// Widget _buildPopupDialog(BuildContext context) {
//   return new AlertDialog(
//     title: const Text('Popup example'),
//     content: new Column(
//       mainAxisSize: MainAxisSize.min,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Text("Hello"),
//       ],
//     ),
//     actions: <Widget>[
//       new FlatButton(
//         onPressed: () {
//           Navigator.of(context).pop();
//         },
//         textColor: Theme.of(context).primaryColor,
//         child: const Text('Close'),
//       ),
//     ],
  // );
// }
