import 'package:flutter/material.dart';
import 'package:maxway_/my_search_widget.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Center(
        child: Column(
          children: [
            MySearch(),
            SizedBox(height: 20),
            Expanded(
              child: MyHome(),
            )
          ],
        ),
      ),
    );
  }
}
