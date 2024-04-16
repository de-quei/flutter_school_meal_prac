import 'package:flutter/material.dart';

import '../widgets/meal_input_widget.dart';

class InsertMealScreen extends StatefulWidget {
  const InsertMealScreen({super.key});

  @override
  State<InsertMealScreen> createState() => _InsertMealScreenState();
}

class _InsertMealScreenState extends State<InsertMealScreen> {
  final TextEditingController breakfastController = TextEditingController();
  final TextEditingController lunchController = TextEditingController();
  final TextEditingController dinnerController = TextEditingController();

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
          leading: IconButton(
            color: Colors.white,
            // 왼쪽 화살표 아이콘
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context); // 뒤로 가기 기능 수행
            },
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "오늘 급식을 입력해주세요!",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              MealInputWidget(mealType: "조식", controller: breakfastController),
              const SizedBox(height: 20),
              MealInputWidget(mealType: "중식", controller: lunchController),
              const SizedBox(height: 20),
              MealInputWidget(mealType: "석식", controller: dinnerController),
              const SizedBox(height: 20),
              ElevatedButton(
                // 적용 버튼
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF188852),
                  fixedSize: Size(MediaQuery.of(context).size.width, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  "적용하기",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
