import 'package:flutter/material.dart';
import 'package:flutter_fall_2023/themes/main_theme.dart';
import 'package:flutter_fall_2023/widgets/cards_widget.dart';
import 'package:flutter_fall_2023/widgets/custom_persistentheader.dart';
import 'package:flutter_fall_2023/widgets/custom_sliverappbar.dart';
import 'package:flutter_fall_2023/widgets/sliverchild_item_widget.dart';

class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: mainTheme.colorScheme.surface,
        body: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                const CustomSliverAppBar(),
                const CustomPersistentHeader(),
              ];
            },
            body: ListView(
              padding: const EdgeInsets.only(top: 8),
              children: [
                SliverChildItemWidget(
                  contentWidget: CardsWidget(),
                  title: "У вас подключено",
                  subtitle:
                      "Подписки, автоплатежи и сервисы, на которые вы подписались",
                ),
                SliverChildItemWidget(
                  contentWidget: SizedBox(
                    height: 100,
                    width: 200,
                    child: ColoredBox(
                        color: const Color.fromARGB(255, 202, 209, 202)),
                  ),
                  title: "Тарифы и лимиты",
                  subtitle: "Для операций в Сбербанк Онлайн",
                ),
                SliverChildItemWidget(
                  contentWidget: SizedBox(
                    height: 100,
                    width: 200,
                    child: ColoredBox(
                        color: const Color.fromARGB(255, 202, 209, 202)),
                  ),
                  title: "Интересы",
                  subtitle:
                      "Мы подбираем истории и предложения по темам, которые вам нравятся",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
