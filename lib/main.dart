import 'package:flutter/material.dart';
import 'package:gdsc_1/showPassword/Singin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "chatApp",
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const ChangePassScren(),
    );
  }
}
