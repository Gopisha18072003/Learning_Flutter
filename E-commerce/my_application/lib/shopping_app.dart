import 'package:flutter/material.dart';
import 'package:my_application/get_started.dart';

class ShoppingApp extends StatefulWidget {
  const ShoppingApp({super.key});
  @override
  State<ShoppingApp> createState() {
    return _ShoppingApp();
  }
}

class _ShoppingApp extends State<ShoppingApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: GetStarted()),
    );
  }
}
