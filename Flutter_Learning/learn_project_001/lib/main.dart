import 'package:flutter/material.dart';
import 'package:learn_project_001/pages/expence_home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExpenceHomeScreen(),
    );
  }
}
