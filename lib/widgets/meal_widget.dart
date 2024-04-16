import 'package:flutter/material.dart';

class MealWidget extends StatelessWidget {
  final String title;
  final List<dynamic> data;

  const MealWidget({super.key, required this.title, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: data.map((item) {
              return Text(
                '${item.join(",\n")}',
                style: const TextStyle(fontSize: 16),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
