import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:toten_prototipo/src/screens/starting/starting.dart';

class TotenApp extends StatelessWidget {
  const TotenApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
          // widget, // era child
          ClampingScrollWrapper.builder(context, widget!),
          maxWidth: 1536,
          minWidth: 480,
          defaultScale: true,
          breakpoints: const [
            ResponsiveBreakpoint.resize(480, name: MOBILE),
            ResponsiveBreakpoint.resize(600, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          ]),
      debugShowCheckedModeBanner: false,
      home: const Starting(),
      theme: ThemeData(
        colorScheme: ThemeData().colorScheme.copyWith(
              secondary: Colors.grey,
            ),
      ),
    );
  }
}
