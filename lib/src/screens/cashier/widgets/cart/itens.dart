import 'package:flutter/material.dart';

class Itens extends StatefulWidget {
  const Itens({Key? key}) : super(key: key);

  @override
  State<Itens> createState() => _ItensState();
}

class _ItensState extends State<Itens> {
  @override
  Widget build(BuildContext context) {
    // TRANSFORMAR POSTERIORMENTE EM BUILDER
    return SizedBox(
      height: 423,
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
