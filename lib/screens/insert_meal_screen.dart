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
          backgroundColor: const Color(0xFF188852),
          title: const Text(
            "관리자 입력 창",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          centerTitle: true,
        ),
        body: const SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "오늘 급식을 입력해주세요!",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
