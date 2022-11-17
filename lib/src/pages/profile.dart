import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(height: 72),
              Container(
                height: 50,
                child: Row(
                  children: [
                    Container(
                      height: 32,
                      width: 252,
                      margin: EdgeInsets.only(left: 12),
                      child: Text(
                        "Olloyor Nodirov",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      width: 75,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'info');
                      },
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      icon: SvgPicture.asset(
                        'assets/profile_icons/editing.svg',
                        height: 25,
                        width: 25,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 12, bottom: 16),
                    child: Text(
                      "+998 99 995 95 25",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(129, 140, 153, 1)),
                    ),
                  )
                ],
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  color: Color(0xfff8F6FA),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'filial');
                        },
                        child: Container(
                          height: 64,
                          margin: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 12),
                              Container(
                                child: SvgPicture.asset(
                                    'assets/profile_icons/location.svg'),
                              ),
                              SizedBox(width: 12),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, 'filial');
                                },
                                child: Container(
                                  width: 187,
                                  child: Text(
                                    "Филиали",
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
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'settings');
                        },
                        child: Container(
                          height: 64,
                          margin:
                              EdgeInsets.only(left: 12, right: 12, bottom: 12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 12),
                              Container(
                                child: SvgPicture.asset(
                                    'assets/profile_icons/set.svg'),
                              ),
                              SizedBox(width: 12),
                              Container(
                                width: 187,
                                child: Text(
                                  "Настройки",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(width: 71.5),
                              Container(
                                child: SvgPicture.asset(
                                  'assets/profile_icons/forward.svg',
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'oservice');
                        },
                        child: Container(
                          height: 64,
                          margin: EdgeInsets.only(left: 12, right: 12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 12),
                              Container(
                                child: SvgPicture.asset(
                                    'assets/profile_icons/sevice.svg'),
                              ),
                              SizedBox(width: 12),
                              Container(
                                width: 187,
                                child: Text(
                                  "О сервисе",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              SizedBox(width: 71.5),
                              Container(
                                child: SvgPicture.asset(
                                  'assets/profile_icons/forward.svg',
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
