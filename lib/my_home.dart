import 'package:flutter/material.dart';
import 'package:maxway_/my_catalog.dart';
import 'package:maxway_/my_tabbar.dart';
import 'package:maxway_/my_recom.dart';
import 'package:maxway_/my_search_widget.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  MyCatalogContainer catalog = MyCatalogContainer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            MySearch(),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 638,
              color: Color.fromRGBO(248, 246, 250, 1),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    MyRecoment(),
                    Tabbar(),
                    MyCatalogContainer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
