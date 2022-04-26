import 'package:flutter/material.dart';

import '../theme/colors.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  final IconData? icon;

  const ActionButton(
      {Key? key, required this.text, required this.onTap, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: _height * 0.07,
      width: _width * 0.22,
      decoration: BoxDecoration(
        color: blue,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: accent.withOpacity(0.6), // psicodelia
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: InkWell(
        onTap: onTap,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 35, color: white),
              SizedBox(
                width: _width * 0.01,
              ),
              Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: white, fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
