import 'package:flutter/material.dart';
import 'package:toten_prototipo/src/screens/cashier/cashier.dart';

class TotenApp extends StatelessWidget {
  const TotenApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: "Toten",
      // home: const Starting(),
      // home: const EnterBarcode(),
      home: const Cashier(),
      theme: ThemeData(
        // primaryColor: Colors.grey,
        colorScheme: ThemeData().colorScheme.copyWith(
              secondary: Colors.grey,
            ),
      ),
    );
  }
}
