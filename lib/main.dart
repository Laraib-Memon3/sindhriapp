import 'package:flutter/material.dart';
import 'package:sindhri/view/home_screen.dart';
import 'package:sindhri/view/payment_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //add dark background to all screens
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headlineMedium: TextStyle(color: Colors.white, fontSize: 24),
          bodyMedium: TextStyle(color: Colors.white70, fontSize: 16),
        ),
      ),
      title: 'Sindhri',
      debugShowCheckedModeBanner: false,
      home: PaymentScreen(),
    );
  }
}
