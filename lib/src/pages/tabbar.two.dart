import 'package:flutter/material.dart';
import '../list_name_price/tabbar_title.dart';

class TabbarTwo extends StatefulWidget {
  final TabbarTitle tabbar;
  final ValueChanged<bool> onslected;

  const TabbarTwo({super.key, required this.tabbar, required this.onslected});

  @override
  State<TabbarTwo> createState() => _TabbarTwoState();
}

class _TabbarTwoState extends State<TabbarTwo> {
  bool _isSlected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSlected = !_isSlected;
          widget.onslected(_isSlected);
        });
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: _isSlected ? Color.fromRGBO(81, 38, 125, 1) : Colors.white,
          borderRadius: BorderRadius.circular(11),
        ),
        child: Text(
          widget.tabbar.title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: _isSlected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
