import 'package:flutter/material.dart';
import 'package:flutter_fall_2023/themes/main_theme.dart';

class CustomTextWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  const CustomTextWidget(
      {super.key, required this.title, required this.subtitle});
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = mainTheme.textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: textTheme.titleLarge,
            maxLines: 1,
          ),
          Text(
            subtitle,
            style: textTheme.bodySmall,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
