import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas2tpm/provider/calculator_provider.dart';
import 'package:tugas2tpm/screens/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalculatorProvider(),
      child: MaterialApp(
        theme:  ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: const LoginPage(),
      ),
    );
  }
}