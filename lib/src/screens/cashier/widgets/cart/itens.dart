import 'package:flutter/material.dart';

class Itens extends StatefulWidget {
  const Itens({Key? key}) : super(key: key);

  @override
  State<Itens> createState() => _ItensState();
}

class _ItensState extends State<Itens> {
  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;

    // TRANSFORMAR POSTERIORMENTE EM BUILDER
    return SizedBox(
      height: _height * 0.5033,
      child: ListView.builder(
        itemCount: 30,
        shrinkWrap: true,
        itemBuilder: (context, index) => const ListTile(
          // title: Text("product {$index}"),
        ),
      ),
    );
  }
}
