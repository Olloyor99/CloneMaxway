import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maxway_/src/pages/customhome.dart';
import 'package:maxway_/src/pages/moy_zakaz.dart';
import 'package:maxway_/src/pages/profile.dart';

class MyNaviBar extends StatefulWidget {
  const MyNaviBar({super.key});

  @override
  State<MyNaviBar> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyNaviBar>  {
  late int activpage;
  late List pages;

  @override
  void initState() {
    pages = [
      MyCustomScroll(),
      MoyZakaz(),
      MyAccount(),
    ];
    activpage = 0;
    setState(() {
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[activpage],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color.fromRGBO(81, 38, 125, 1),
        selectedFontSize: 12,
        unselectedFontSize: 12,
        currentIndex: activpage,
        onTap: (value) {
          activpage = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                activpage == 0
                    ? 'assets/icons/home2.svg'
                    : 'assets/icons/home.svg',
                height: 20,
                width: 20,
                fit: BoxFit.scaleDown,
              ),
              label: 'Главное'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                activpage == 1
                    ? 'assets/icons/shop2.svg'
                    : 'assets/icons/shop.svg',
                height: 20,
                width: 20,
                fit: BoxFit.scaleDown,
              ),
              label: 'Мои заказы'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                activpage == 2
                    ? 'assets/icons/profile2.svg'
                    : 'assets/icons/profile.svg',
                height: 20,
                width: 20,
                fit: BoxFit.scaleDown,
              ),
              label: 'Личное'),
        ],
      ),
    );
  }
}
