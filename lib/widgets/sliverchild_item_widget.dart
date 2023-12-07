import 'package:flutter/material.dart';
import 'package:flutter_fall_2023/widgets/custom_text_widget.dart';

class SliverChildItemWidget extends StatelessWidget {
  final Widget contentWidget;
  final String title;
  final String subtitle;

  const SliverChildItemWidget(
      {super.key,
      required this.contentWidget,
      required this.title,
      required this.subtitle});

  @override
  Widget build(Object context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextWidget(
            title: title,
            subtitle: subtitle,
          ),
          contentWidget,
        ],
      ),
    );
  }
}
