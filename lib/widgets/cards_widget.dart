import 'package:flutter/material.dart';
import 'package:flutter_fall_2023/widgets/custom_card.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 162,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 32),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            CustomCard(
              icon: SvgPicture.asset(
                'images/sber.svg',
                height: 20,
                fit: BoxFit.fitHeight,
              ),
              title: 'СберПрайм',
              bodyText1: 'Платём 9 июля',
              bodyText2: '199 ₽ в месяц',
            ),
            CustomCard(
              icon: SvgPicture.asset(
                'images/percent.svg',
                height: 36,
                fit: BoxFit.fitHeight,
              ),
              title: 'Переводы',
              bodyText1: 'Автопродление 21 августа',
              bodyText2: '199 ₽ в месяц',
            ),
          ],
        ),
      ),
    );
  }
}
