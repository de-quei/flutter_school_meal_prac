import 'package:flutter/material.dart';

class MealWidget extends StatelessWidget {
  final String title;
  final List<dynamic> data;

  const MealWidget({super.key, required this.title, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: data.map((item) {
            return Text(
              '$item',
              style: const TextStyle(fontSize: 16),
            );
          }).toList(),
        ),
      ],
    );
  }
}
