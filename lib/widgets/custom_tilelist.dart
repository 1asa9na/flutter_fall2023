import 'package:flutter/material.dart';
import 'package:flutter_fall_2023/models/tilemodel.dart';
import 'package:flutter_fall_2023/widgets/custom_listtile.dart';

class CustomTileList extends StatelessWidget {
  final List<TileModel> items = [
    TileModel(
      icon: 'images/speedometer.svg',
      title: 'Изменить суточный лимит',
      subtitle: 'На платежи и переводы',
    ),
    TileModel(
      icon: 'images/percent_line.svg',
      title: 'Переводы без комиссии',
      subtitle: 'Показать остаток в этом месяце',
    ),
    TileModel(
      icon: 'images/send.svg',
      title: 'Информация о тарифах и лимитах',
    ),
  ];

  CustomTileList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            indent: 68,
            height: 1,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return CustomListTile(items[index]);
        },
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 3,
        padding: const EdgeInsets.all(0),
      ),
    );
  }
}
