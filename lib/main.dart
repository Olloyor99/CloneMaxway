import 'package:flutter/material.dart';
import 'package:maxway_/list_name_price/narxlari.dart';

import 'package:maxway_/my_catalog.dart';
import 'package:maxway_/my_info.dart';
import 'package:maxway_/my_korzina.dart';

import 'package:maxway_/my_logo.dart';
import 'package:maxway_/my_navibar.dart';
import 'package:maxway_/profile.dart';
import 'package:maxway_/reg_two.dart';
import 'package:maxway_/regstration_one.dart';

void main() => runApp(MyWidget());

class MyWidget extends StatelessWidget {
  MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: (RouteSettings settings) {
          settings.arguments;
          switch (settings.name) {
            case '/':
              return MaterialPageRoute(builder: ((context) => MyLogo()));
            case 'my_home':
              return MaterialPageRoute(builder: ((context) => MyNaviBar()));
            case 'myprofile':
              return MaterialPageRoute(builder: ((context) => MyAccount()));
            case 'korzina':
              return MaterialPageRoute(builder: ((context) => MyKorzina()));
            case 'info':
              return MaterialPageRoute(builder: ((context) => MyInfo()));
            case 'regstrationone':
              return MaterialPageRoute(
                  builder: ((context) => MyRegstrationOne()));
            case 'reg2':
              return MaterialPageRoute(builder: ((context) => MyRegTwo()));
          }
        });
  }
}
