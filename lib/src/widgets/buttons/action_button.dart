import 'package:flutter/material.dart';

import '../../theme/colors.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  final IconData? icon;
  final Color? color;

  const ActionButton(
      {Key? key,
      required this.text,
      required this.onTap,
      this.icon,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    final double _height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: _width * 0.0065),
      height: _height * 0.07,
      width: _width * 0.22,
      decoration: BoxDecoration(
        color: color ?? blue,
        borderRadius: BorderRadius.circular(_width * 0.013),
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
              Icon(icon, size: _width * 0.0227, color: white),
              SizedBox(
                width: _width * 0.01,
              ),
              Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: white,
                    fontWeight: FontWeight.bold,
                    fontSize: _width * 0.013),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
