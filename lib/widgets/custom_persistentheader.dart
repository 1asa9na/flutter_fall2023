import 'package:flutter/material.dart';
import 'package:flutter_fall_2023/widgets/sliverappbar_delegate.dart';

class CustomPersistentHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TabBarTheme tabBarTheme = Theme.of(context).tabBarTheme;
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
