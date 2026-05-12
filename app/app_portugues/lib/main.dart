import 'package:flutter/material.dart';
import 'paginaInicial.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const Paginainicial(),
      debugShowCheckedModeBanner: false,
    );
  }
}
