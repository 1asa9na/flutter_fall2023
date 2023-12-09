import 'package:flutter/material.dart';
import 'package:flutter_fall_2023/themes/main_theme.dart';

class CustomFilterChip extends StatefulWidget {
  final String label;

  const CustomFilterChip({super.key, required this.label});
  @override
  State<CustomFilterChip> createState() {
    return _CustomFilterChipState();
  }
}

class _CustomFilterChipState extends State<CustomFilterChip> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = mainTheme.textTheme;
    ColorScheme colorScheme = mainTheme.colorScheme;
    return FilterChip(
      label: Text(widget.label),
      labelStyle: textTheme.headlineSmall,
      selected: isSelected,
      backgroundColor: Colors.black.withOpacity(0.08),
      selectedColor: colorScheme.primaryContainer,
      checkmarkColor: colorScheme.primary,
      onSelected: (select) {
        setState(
          () {
            isSelected = select;
          },
        );
      },
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 7,
      ),
      side: BorderSide.none,
      shape: const StadiumBorder(),
    );
  }
}
