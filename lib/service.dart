import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class Oservise extends StatefulWidget {
  const Oservise({super.key});

  @override
  State<Oservise> createState() => _OserviseState();
}

class _OserviseState extends State<Oservise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "О сервисе",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset('assets/profile_icons/back.svg'),
        ),
      ),
      body: Center(
        child: Container(
          color: Color.fromRGBO(247, 247, 247, 1),
          child: Column(
            children: [
              SizedBox(
                height: 12,
              ),
              Container(
                height: 186,
                alignment: Alignment.center,
                margin: EdgeInsets.only(right: 12, left: 12),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(children: [
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 56,
                    child: Row(
                      children: [
                        SizedBox(width: 12),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'politica');
                          },
                          child: Container(
                            child: Text(
                              "Политика конденциалности",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 71.5),
                        Container(
                          child: SvgPicture.asset(
                            'assets/profile_icons/forward.svg',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 56,
                    child: Row(
                      children: [
                        SizedBox(width: 12),
                        GestureDetector(
                          onTap: () {
                            // Navigator.pushNamed(context, 'filial');
                          },
                          child: Container(
                            child: Text(
                              "Лицензионные соглашения",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 75.5),
                        Container(
                          child: SvgPicture.asset(
                            'assets/profile_icons/forward.svg',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 56,
                    child: Row(
                      children: [
                        SizedBox(width: 12),
                        GestureDetector(
                          onTap: () {
                            // Navigator.pushNamed(context, 'filial');
                          },
                          child: Container(
                            child: Text(
                              "Работа в MaxWay",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 165.5),
                        Container(
                          child: SvgPicture.asset(
                            'assets/profile_icons/forward.svg',
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
