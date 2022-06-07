import 'package:calculator/calculator.dart';
import 'package:calculator/calculatorpotrait.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'calculatorlandscape.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: calculator(),
    );
  }
}

