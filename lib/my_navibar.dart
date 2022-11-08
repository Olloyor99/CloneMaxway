import 'package:flutter/material.dart';
import 'package:maxway_/moy_zakaz.dart';
import 'package:maxway_/my_catalog.dart';
import 'package:maxway_/my_home.dart';
import 'package:maxway_/profile.dart';

class MyNaviBar extends StatefulWidget {
  const MyNaviBar({super.key});

  @override
  State<MyNaviBar> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyNaviBar> with TickerProviderStateMixin {
  TabController? tabController;
  late int activpage;
  late List pages;
  late bool tab;
  @override
  void initState() {
    pages = [
      MyHome(),
      MoyZakaz(),
      MyAccount(),
    ];
    activpage = 0;
    setState(() {
      tabController = TabController(length: 3, vsync: this);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[activpage],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color.fromARGB(255, 94, 40, 144),
        currentIndex: activpage,
        elevation: 0,
        onTap: (value) {
          activpage = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Главное'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Мой заказы'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Личное'),
        ],
      ),
    );
  }
}
