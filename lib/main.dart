import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:sindhri/view/Product1.dart';
import 'package:sindhri/view/home_screen.dart';
=======
import 'package:sindhri/view/splash_screen.dart';
>>>>>>> 049f59042032a7b9882b5231bebee34de95eb6da

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //added dark background to all screens
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
<<<<<<< HEAD
      home: Product1(),
=======
      home: SplashScreen(),
>>>>>>> 049f59042032a7b9882b5231bebee34de95eb6da
    );
  }
}
