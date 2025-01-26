import 'package:drawer_example/confettiExample/pages/confetti_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.orange,
        ),
      ),
      home: const ConfettiPage(),
    ),
  );
}
