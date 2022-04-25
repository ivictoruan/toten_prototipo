import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toten_prototipo/toten_app.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const TotenApp());
}
