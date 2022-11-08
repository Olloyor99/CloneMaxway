import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:ui';

class MyLogo extends StatefulWidget {
  const MyLogo({super.key});

  @override
  State<MyLogo> createState() => _MyLogoState();
}

class _MyLogoState extends State<MyLogo> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),
        (() => Navigator.pushReplacementNamed(context, 'my_home')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/maxway.png'), fit: BoxFit.cover),
        ),
        child: Center(
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(),
            ),
          ),
        ),
      ),
    );
  }
}
