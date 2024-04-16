import 'package:flutter/material.dart';

class MealInputWidget extends StatefulWidget {
  final String mealType;
  final TextEditingController controller;

  const MealInputWidget({
    super.key,
    required this.mealType,
    required this.controller,
  });

  @override
  State<MealInputWidget> createState() => _MealInputWidgetState();
}

class _MealInputWidgetState extends State<MealInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${widget.mealType} 입력",
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        TextFormField(
          controller: widget.controller,
          decoration: InputDecoration(
            hintText: "${widget.mealType}을 입력하세요",
          ),
        ),
      ],
    );
  }
}
