
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sindhri/main.dart' show MainApp;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MainApp());
}
