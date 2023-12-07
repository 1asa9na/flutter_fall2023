import 'package:flutter/material.dart';
import 'package:flutter_fall_2023/themes/color_scheme.dart';
import 'package:flutter_fall_2023/themes/icon_theme.dart';
import 'package:flutter_fall_2023/themes/tabbar_theme.dart';
import 'package:flutter_fall_2023/themes/text_theme.dart';

ThemeData mainTheme = ThemeData(
  textTheme: textTheme,
  colorScheme: colorScheme,
  useMaterial3: true,
  brightness: Brightness.light,
  tabBarTheme: tabBarTheme,
  iconTheme: iconTheme,
);
