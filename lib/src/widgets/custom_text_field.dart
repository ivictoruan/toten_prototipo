import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme/colors.dart';

class CustomTextField extends StatelessWidget {
  final double width;
  final TextEditingController? controller;
  const CustomTextField({Key? key, required this.width, this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 14,
      color: grey,
      borderRadius: const BorderRadius.all(
        Radius.circular(50),
      ),
      shadowColor: grey,
      child: Container(
        width: width,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey, //New
                blurRadius: 1.0,
                offset: Offset(-1, -1))
          ],
        ),
        child: TextFormField(
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(14),
          ],
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            filled: true,
            fillColor: white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
          ),
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 30, letterSpacing: 10, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
