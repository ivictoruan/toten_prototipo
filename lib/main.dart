import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toten_prototipo/toten_app.dart';
void main() {

  // TAMANHO DA TELA: 1536 X 840.8
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const TotenApp());
}
