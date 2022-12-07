import 'package:flutter/material.dart';
import 'package:consulta_cep/views/home_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    theme:
        ThemeData(brightness: Brightness.light, primarySwatch: Colors.indigo),
    darkTheme: ThemeData(
      brightness: Brightness.dark,
    ),
  ));
}
