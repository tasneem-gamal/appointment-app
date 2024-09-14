import 'package:flutter/material.dart';

void main() {
  runApp(const AppointApp());
}

class AppointApp extends StatelessWidget {
  const AppointApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}
