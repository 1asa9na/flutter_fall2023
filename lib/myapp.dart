import 'package:flutter/material.dart';
import 'package:flutter_fall_2023/themes/main_theme.dart';

import 'pages/my_home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: mainTheme,
      home: MyHomeScreen(),
    );
  }
}
