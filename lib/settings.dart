import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MySettings extends StatefulWidget {
  const MySettings({super.key});

  @override
  State<MySettings> createState() => _MySettingsState();
}

class _MySettingsState extends State<MySettings> {
  @override
  Widget build(BuildContext context) {
    bool sms = false;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Настройки",
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
            icon: SvgPicture.asset('assets/profile_icons/back.svg')),
      ),
      body: Center(
        child: Container(
          color: Color.fromRGBO(247, 247, 247, 1),
          child: Column(
            children: [
              SizedBox(height: 12),
              GestureDetector(
                onTap: () {
                  // showBottomSheet(
                  //     context: context,
                  //     builder: (BuildContext context) {
                  //       return Container(
                  //         height: 500,
                  //         color: Colors.white,
                  //       );
                  //     });
                },
                child: Container(
                  height: 64,
                  margin: EdgeInsets.only(left: 12, right: 12, bottom: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 12),
                      Container(
                        child: SvgPicture.asset('assets/icons/world.svg'),
                      ),
                      SizedBox(width: 12),
                      Container(
                        width: 120,
                        child: Text(
                          "Язык",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(width: 71.5),
                      Container(
                        child: Text(
                          "Русский",
                          style: TextStyle(
                            color: Color.fromRGBO(129, 140, 153, 1),
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        child: SvgPicture.asset(
                          'assets/profile_icons/forward.svg',
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 64,
                margin: EdgeInsets.only(left: 12, right: 12, bottom: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 12),
                    Container(
                      child: SvgPicture.asset('assets/icons/sms.svg'),
                    ),
                    SizedBox(width: 12),
                    Container(
                      width: 187,
                      child: Text(
                        "Личные сообщения",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(width: 45.5),
                    Container(
                      child: CupertinoSwitch(
                        value: true,
                        onChanged: (value) {
                          setState(() {
                            sms = value;
                          });
                        },
                        activeColor: Color.fromRGBO(81, 38, 125, 1),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 64,
                margin: EdgeInsets.only(left: 12, right: 12, bottom: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 12),
                    Container(
                      child: SvgPicture.asset('assets/icons/notifications.svg'),
                    ),
                    SizedBox(width: 12),
                    Container(
                      width: 187,
                      child: Text(
                        "Уведомлений",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(width: 45.5),
                    Container(
                      child: CupertinoSwitch(
                        value: true,
                        onChanged: (value) {
                          sms = value;
                        },
                        activeColor: Color.fromRGBO(81, 38, 125, 1),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}