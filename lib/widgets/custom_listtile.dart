import 'package:flutter/material.dart';
import 'package:flutter_fall_2023/models/tilemodel.dart';
import 'package:flutter_fall_2023/themes/main_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomListTile extends StatelessWidget {
  final String icon;
  final String title;
  final String? subtitle;

  CustomListTile(TileModel item, {super.key})
      : icon = item.icon,
        title = item.title,
        subtitle = item.subtitle;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = mainTheme.textTheme;
    return ListTile(
      leading: SvgPicture.asset(
        icon,
        height: 36,
        fit: BoxFit.fitHeight,
      ),
      title: Text(
        title,
        maxLines: (subtitle == null) ? 2 : 1,
      ),
      subtitle: (subtitle == null) ? null : Text(subtitle!),
      trailing: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: SvgPicture.asset("images/next.svg"),
      ),
      titleTextStyle: textTheme.titleSmall,
      subtitleTextStyle: textTheme.bodySmall,
      contentPadding: const EdgeInsets.only(left: 16, right: 8),
      onTap: () {},
    );
  }
}
