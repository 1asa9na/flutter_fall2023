import 'package:flutter/material.dart';
import 'package:flutter_fall_2023/themes/color_scheme.dart';
import 'package:flutter_fall_2023/themes/text_theme.dart';

TabBarTheme tabBarTheme = TabBarTheme(
  labelStyle: textTheme.titleSmall,
  unselectedLabelColor: Colors.black54,
  indicatorColor: colorScheme.primary,
  overlayColor: MaterialStateProperty.all<Color>(colorScheme.primaryContainer),
);
