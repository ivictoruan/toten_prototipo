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
    return Padding(
      padding: EdgeInsets.only(
          bottom: _height * 0.1, left: _width * 0.40, right: _width * 0.40),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        height: MediaQuery.of(context).size.height * 0.08,
        // width: MediaQuery.of(context).size.width * 0.08,
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
                Text(
                  text,
                  style: const TextStyle(
                    color: white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
