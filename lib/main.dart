import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sindhri/view/home_screen.dart';
import 'package:sindhri/view/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< Updated upstream
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
      home: SplashScreen(),
=======
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Center(child: Text('Hello World!'))),
>>>>>>> Stashed changes
    );
  }
}
