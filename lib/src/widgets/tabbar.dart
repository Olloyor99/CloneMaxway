import 'package:flutter/material.dart';
import 'package:maxway_/src/widgets/tabbar.two.dart';
import '../../list_name_price/tabbar_title.dart';

class MyTabbar extends StatefulWidget {
  const MyTabbar({super.key});

  @override
  State<MyTabbar> createState() => _MyTabbarState();
}

class _MyTabbarState extends State<MyTabbar> {
  List<TabbarTitle> itemes = [];
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
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
                              itemes.add(tabbartitle[index]);
                            } else {
                              itemes.remove(tabbartitle[index]);
                            }
                            setState(() {});
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                // Container(
                //   width: double.infinity,
                //   child: Wrap(
                //     children: [
                //       ...List.generate(
                //         itemes.length,
                //         (index) => Catalogs(title: itemes[index].title),
                //       ),
                //     ],
                //   ),
                // )
              ],
            ),
          );
        },
        childCount: 1,
      ),
    );
  }
}
