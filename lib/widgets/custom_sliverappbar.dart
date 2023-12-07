import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    IconThemeData iconTheme = Theme.of(context).iconTheme;
    TextTheme textTheme = Theme.of(context).textTheme;
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return SliverAppBar(
      forceElevated: true,
      pinned: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.exit_to_app,
            color: iconTheme.color,
            size: iconTheme.size,
          ),
        ),
      ],
      backgroundColor: colorScheme.primary,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.close,
          color: iconTheme.color,
          size: iconTheme.size,
        ),
      ),
      snap: false,
      floating: true,
      expandedHeight: 240.0,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          "Екатерина",
          style: textTheme.titleLarge,
          textAlign: TextAlign.center,
        ),
        titlePadding: const EdgeInsets.symmetric(vertical: 14),
        centerTitle: true,
        background: Column(
          children: [
            const Spacer(),
            Image.asset(
              'images/ekaterina.png',
              height: 110,
              fit: BoxFit.fitHeight,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
