import 'package:flutter/material.dart';
import 'package:maxway_/tabbar.two.dart';
import 'list_name_price/tabbar_title.dart';

class MyTabbar extends StatefulWidget {
  const MyTabbar({super.key});

  @override
  State<MyTabbar> createState() => _MyTabbarState();
}

class _MyTabbarState extends State<MyTabbar> {
  List<TabbarTitle> itmes = [];
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              // color: Color.fromRGBO(248, 246, 250, 1),

              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...List<Widget>.generate(
                    tabbartitle.length,
                    (index) => TabbarTwo(
                      tabbar: tabbartitle[index],
                      onslected: (bool value) {
                        if (value) {
                          itmes.add(tabbartitle[index]);
                        } else {
                          itmes.remove(tabbartitle[index]);
                        }
                        setState(() {});
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        childCount: 1,
      ),
    );
  }
}
