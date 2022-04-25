import 'package:flutter/material.dart';
import 'package:toten_prototipo/src/screens/starting/starting.dart';

class TotenApp extends StatelessWidget {
  const TotenApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: "Toten",
      home: const Starting(),
      // home: const Testing(),
      theme: ThemeData(
        // primaryColor: Colors.grey,
        colorScheme: ThemeData().colorScheme.copyWith(
              secondary: Colors.grey,
            ),
      ),
    );
  }
}
