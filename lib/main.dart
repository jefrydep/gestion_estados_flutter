import 'package:flutter/material.dart';
import 'package:forms_app/screens/home_scren.dart';
import 'package:forms_app/screens/screen1.dart';
import 'package:forms_app/screens/screen2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {
          'home': (context) => const HomeScreen(),
          'screen1': (context) => const Screen1(),
          'screen2': (context) => const Screen2()
        });
  }
}
