import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'dart:convert';

import '../widgets/meal_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<dynamic> mealData = []; // JSON 데이터를 저장할 리스트

  @override
  void initState() {
    super.initState();
    loadJsonData(); // 앱이 시작될 때 JSON 데이터 로드
  }

  // assets/data.json 파일을 읽어와서 리스트에 저장하는 함수
  Future<void> loadJsonData() async {
    String jsonData = await rootBundle.loadString('assets/data.json');
    setState(() {
      mealData = json.decode(jsonData);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // AppBar
        backgroundColor: const Color(0xFF188852),
        title: const Text(
          "미림급식알리미",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        centerTitle: true, // title의 위치를 center로 설정
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Expanded 위젯 추가
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    getToday(), //오늘 날짜 불러오기
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const Text(
                    "맛있는거 먹고 오늘도 화이팅!",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  MealWidget(
                    title: '조식',
                    data: mealData.map((e) => e['breakfast']).toList(),
                  ),
                  MealWidget(
                    title: '중식',
                    data: mealData.map((e) => e['lunch']).toList(),
                  ),
                  MealWidget(
                    title: '석식',
                    data: mealData.map((e) => e['dinner']).toList(),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
                showInputDiolog(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF188852),
                fixedSize: Size(MediaQuery.of(context).size.width, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text(
                "급식 등록하기",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String getToday() {
    //오늘 날짜 불러오기
    DateTime now = DateTime.now();
    DateFormat formatter = DateFormat('yyyy년 MM월 dd일 EEEE');
    String strToday = formatter.format(now);
    return strToday;
  }

  void showInputDiolog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            "관리자 비밀번호를 입력해주세요.",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          content: const TextField(
            decoration: InputDecoration(
              hintText: "분실 시 담당 선생님께 문의",
              hintStyle: TextStyle(fontSize: 13),
            ),
          ),
          actions: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF188852),
              ),
              onPressed: () {
                Navigator.of(context).pop(); // 기능 변경하기
              },
              child: const Text(
                "등록",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                "취소",
                style: TextStyle(
                  color: Color(0xFF188852),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
