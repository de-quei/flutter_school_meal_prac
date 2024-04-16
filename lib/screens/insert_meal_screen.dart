import 'package:flutter/material.dart';

class InsertMealScreen extends StatefulWidget {
  const InsertMealScreen({super.key});

  @override
  State<InsertMealScreen> createState() => _InsertMealScreenState();
}

class _InsertMealScreenState extends State<InsertMealScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("입력창"),
        ),
      ),
    );
  }
}
