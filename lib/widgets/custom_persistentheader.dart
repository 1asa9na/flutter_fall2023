import 'package:flutter/material.dart';
import 'package:flutter_fall_2023/themes/main_theme.dart';
import 'package:flutter_fall_2023/widgets/sliverappbar_delegate.dart';

class CustomPersistentHeader extends StatelessWidget {
  const CustomPersistentHeader({super.key});

  @override
  Widget build(BuildContext context) {
    TabBarTheme tabBarTheme = mainTheme.tabBarTheme;
    return SliverPersistentHeader(
      delegate: SliverAppBarDelegate(
        TabBar(
          tabs: const [
            Tab(text: "Профиль"),
            Tab(text: "Настройки"),
          ],
          overlayColor: tabBarTheme.overlayColor,
          indicatorColor: tabBarTheme.indicatorColor,
          labelStyle: tabBarTheme.labelStyle,
          unselectedLabelColor: tabBarTheme.unselectedLabelColor,
          indicatorSize: TabBarIndicatorSize.tab,
        ),
      ),
    );
  }
}
