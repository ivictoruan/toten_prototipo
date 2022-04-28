import 'package:flutter/material.dart';
import 'package:toten_prototipo/src/widgets/custom_text_field.dart';

import '../../../../theme/colors.dart';
import 'num_pad.dart';

class EnterBarcode extends StatefulWidget {
  const EnterBarcode({Key? key}) : super(key: key);

  @override
  State<EnterBarcode> createState() => _EnterBarcodeState();
}

class _EnterBarcodeState extends State<EnterBarcode> {
  @override
  Widget build(BuildContext context) {
    // final double _height = MediaQuery.of(context).size.height;
    // final double _width = MediaQuery.of(context).size.width;
    final TextEditingController _myController = TextEditingController();
    return Container(
      width: 1000,
      height: 700 ,
      decoration: const BoxDecoration(
        color: white,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Digite o código indicado no produto e pressione Enter",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(controller: _myController, width: 606),
            const SizedBox(
              height: 20,
            ),
            // NUM PAD
            NumPad(
              buttonSize: 75,
              buttonColor: const Color(0xffECEAEA),
              // buttonColor: Colors.green,
              iconColor: blue,
              controller: _myController,
              delete: () {
                _myController.text = _myController.text
                    .substring(0, _myController.text.length - 1);
              },
              // do something with the input numbers
              onSubmit: () {
                debugPrint('Your code: ${_myController.text}');
                showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                          content: Text(
                            "You code is ${_myController.text}",
                            style: const TextStyle(fontSize: 30),
                          ),
                        ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
