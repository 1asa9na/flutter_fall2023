import 'package:flutter/material.dart';
import 'package:flutter_fall_2023/widgets/custom_persistentheader.dart';
import 'package:flutter_fall_2023/widgets/custom_sliverappbar.dart';
import 'package:flutter_fall_2023/widgets/sliverchild_item_widget.dart';

class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                CustomSliverAppBar(),
                CustomPersistentHeader(),
              ];
            },
            body: ListView(
              children: [
                SliverChildItemWidget(
                  contentWidget: SizedBox(
                    height: 100,
                    width: 300,
                    child: ColoredBox(color: Color.fromARGB(255, 7, 239, 7)),
                  ),
                  title: "У вас подключено",
                  subtitle: "dfdkfmdsmfksdmfkj",
                ),
                SliverChildItemWidget(
                  contentWidget: SizedBox(
                    height: 100,
                    width: 200,
                    child: ColoredBox(
                        color: const Color.fromARGB(255, 202, 209, 202)),
                  ),
                  title: "dfsdfsdfsdf",
                  subtitle: "dfdkfmdsmfksdmfkj",
                ),
                SliverChildItemWidget(
                  contentWidget: SizedBox(
                    height: 100,
                    width: 200,
                    child: ColoredBox(
                        color: const Color.fromARGB(255, 202, 209, 202)),
                  ),
                  title: "dfsdfsdfsdf",
                  subtitle: "dfdkfmdsmfksdmfkj",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
