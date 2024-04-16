import 'package:flutter/material.dart';

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
              buildMealInputForm("조식", breakfastController),
              const SizedBox(height: 20),
              buildMealInputForm("중식", lunchController),
              const SizedBox(height: 20),
              buildMealInputForm("석식", dinnerController),
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

  Widget buildMealInputForm(String mealType, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$mealType 입력",
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: "$mealType을 입력하세요",
          ),
        ),
      ],
    );
  }
}
