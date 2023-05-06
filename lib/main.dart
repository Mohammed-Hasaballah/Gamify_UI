import 'package:flutter/material.dart';
import 'package:gamify_app/pages/home_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Gamify Application',
    home: const HomePage(),
    theme: ThemeData(
      brightness: Brightness.dark,
    ),
  ));
}
