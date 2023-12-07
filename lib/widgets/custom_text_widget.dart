import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  const CustomTextWidget(
      {super.key, required this.title, required this.subtitle});
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
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
