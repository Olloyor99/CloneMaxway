import 'package:flutter/material.dart';
import 'package:maxway_/src/widgets/filial.dart';
import 'package:maxway_/src/widgets/my_info.dart';
import 'package:maxway_/src/widgets/my_korzina.dart';
import 'package:maxway_/src/widgets/my_logo.dart';
import 'package:maxway_/src/widgets/my_navibar.dart';
import 'package:maxway_/src/widgets/politica.dart';
import 'package:maxway_/src/widgets/profile.dart';
import 'package:maxway_/src/widgets/recomment2.dart';
import 'package:maxway_/src/widgets/reg_two.dart';
import 'package:maxway_/src/widgets/regstration_one.dart';
import 'package:maxway_/src/widgets/service.dart';
import 'package:maxway_/src/widgets/settings.dart';

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
