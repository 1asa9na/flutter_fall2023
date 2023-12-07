import 'package:flutter/material.dart';
import 'package:flutter_fall_2023/themes/main_theme.dart';

class CustomCard extends StatelessWidget {
  final Widget icon;
  final String title;
  final String bodyText1;
  final String bodyText2;

  const CustomCard({
    super.key,
    required this.icon,
    required this.title,
    required this.bodyText1,
    required this.bodyText2,
  });

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = mainTheme.colorScheme;
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        width: 216,
        height: 130,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: colorScheme.onPrimary,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.08),
                offset: const Offset(0, 10),
                spreadRadius: 0,
                blurRadius: 10,
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 36,
                          width: 36,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: mainTheme.colorScheme.surface,
                          ),
                        ),
                        icon,
                      ],
                    ),
                  ),
                  Text(
                    title,
                    style: mainTheme.textTheme.titleSmall,
                  ),
                ],
              ),
              const Spacer(),
              Text(
                bodyText1,
                style: mainTheme.textTheme.headlineSmall,
              ),
              Text(
                bodyText2,
                style: mainTheme.textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
