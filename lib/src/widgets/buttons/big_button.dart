import 'package:flutter/material.dart';

import '../../theme/colors.dart';

class BigButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function()? onPressed;
  const BigButton({Key? key, required this.text, required this.color, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: color,
          onSurface: grey,
          fixedSize: const Size(270, 100),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
