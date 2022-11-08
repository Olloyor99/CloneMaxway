import 'package:flutter/material.dart';
import 'package:maxway_/my_recom.dart';
import 'package:maxway_/tabbar.two.dart';
import 'list_name_price/tabbar_title.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  List<TabbarTitle> itmes = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: const Color.fromRGBO(248, 246, 250, 1),
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
          // Container(
          //   height: 36,
          //   width: double.infinity,
          //   child: Wrap(
          //     children: [
          //       ...List.generate(
          //         itmes.length,
          //         (index) => Catalogs(title: itmes[index].title),
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}

class Catalogs extends StatelessWidget {
  final String title;
  const Catalogs({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(this.title),
    );
  }
}
