import 'package:flutter/material.dart';
import 'package:flutter_fall_2023/widgets/custom_filterchip.dart';

class CustomChipList extends StatelessWidget {
  final List<String> items = [
    "Еда",
    "Саморазвитие",
    "Технологии",
    "Дом",
    "Досуг",
    "Забота о себе",
    "Наука",
  ];

  CustomChipList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Wrap(
        spacing: 8,
        children: List<Widget>.generate(
          items.length,
          (index) => CustomFilterChip(label: items[index]),
        ),
      ),
    );
  }
}
