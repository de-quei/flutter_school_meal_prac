import 'package:flutter/material.dart';

class MealWidget extends StatefulWidget {
  final String title;
  final List<dynamic> data;

  const MealWidget({super.key, required this.title, required this.data});

  @override
  State<MealWidget> createState() => _MealWidgetState();
}

class _MealWidgetState extends State<MealWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: widget.data.map((item) {
            return Text(
              '${item.join(", ")}',
              style: const TextStyle(fontSize: 16),
            );
          }).toList(),
        ),
      ],
    );
  }
}
