import 'package:flutter/material.dart';

import '../../theme/colors.dart';

class SmallActionButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  final Color? color;
  final IconData? icon;

  const SmallActionButton(
      {Key? key,
      required this.text,
      required this.onTap,
      this.color,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width;
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(_width * 0.013),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.0723,
        height: MediaQuery.of(context).size.height * 0.07,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(_width * 0.013),
          // border: Border.all(
          //   // borda preta!
          //   color: color == white ? black : white,
          //   width: 1.5,
          // ),
          boxShadow: [
            BoxShadow(
              color: grey.withOpacity(0.6),
              blurRadius: _width * 0.013,
              offset: const Offset(1, -3),
            ),
          ],
        ),
        child: InkWell(
          onTap: onTap,
          child: Column(
            children: [
              Icon(icon,
                  size: _width * 0.0228, color: color == white ? blue : white),
              Center(
                child: Text(
                  text,
                  style: TextStyle(
                    color: color == white ? blue : white,
                    fontWeight: FontWeight.bold,
                    fontSize: _width * 0.009765625,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
