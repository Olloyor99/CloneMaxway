import 'package:flutter/material.dart';
import 'package:maxway_/src/pages/filial.dart';
import 'package:maxway_/src/pages/my_info.dart';
import 'package:maxway_/src/pages/my_korzina.dart';
import 'package:maxway_/src/pages/my_logo.dart';
import 'package:maxway_/src/pages/my_navibar.dart';
import 'package:maxway_/src/pages/politica.dart';
import 'package:maxway_/src/pages/profile.dart';
import 'package:maxway_/src/pages/recomment2.dart';
import 'package:maxway_/src/pages/reg_two.dart';
import 'package:maxway_/src/pages/regstration_one.dart';
import 'package:maxway_/src/pages/service.dart';
import 'package:maxway_/src/pages/settings.dart';

void main() => runApp(MyWidget());

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

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
            case 'filial':
              return MaterialPageRoute(builder: ((context) => MyFilial()));
            case 'settings':
              return MaterialPageRoute(builder: ((context) => MySettings()));
            case 'oservice':
              return MaterialPageRoute(builder: ((context) => Oservise()));
            case 'myrec2':
              return MaterialPageRoute(builder: ((context) => Myrec2()));
            case 'politica':
              return MaterialPageRoute(builder: ((context) => Politica()));
          }
        });
  }
}
