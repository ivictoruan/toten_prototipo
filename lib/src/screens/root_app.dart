import 'package:flutter/material.dart';
import 'package:toten_prototipo/src/json/constant.dart';
import 'package:toten_prototipo/src/widgets/custom_carousel.dart';


class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    return ListView(padding: EdgeInsets.zero, children: [
      CustomCarousel(items: promotions),

    ]);
  }
}
