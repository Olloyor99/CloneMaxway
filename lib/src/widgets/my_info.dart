import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyInfo extends StatefulWidget {
  const MyInfo({super.key});

  @override
  State<MyInfo> createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
  String name = "Olloyor";
  String lastname = "Nodirov";
  String number = "+998 94 995 95 25";
  String brithday = "30.12.1999";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset('assets/profile_icons/back.svg'),
        ),
        title: Text(
          "Редактировать профиль",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 17,
          ),
        ),
      ),
      body: Container(
        color: Color.fromARGB(08, 08, 08, 1),
        child: Center(
          child: Container(
            width: 351,
            child: Column(
              children: [
                SizedBox(height: 12),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(" Имя"),
                ),
                SizedBox(height: 4),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 12),
                    constraints: BoxConstraints(maxHeight: 48),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: '$name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none),
                  ),
                ),
                SizedBox(height: 24),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(" Фамилия"),
                ),
                SizedBox(height: 4),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 12),
                    constraints: BoxConstraints(maxHeight: 48),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: '$lastname',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none),
                  ),
                ),
                SizedBox(height: 24),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(" Номер телефона"),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 12),
                    constraints: BoxConstraints(maxHeight: 48),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: '$number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(" Ваш дата рождения"),
                ),
                SizedBox(height: 4),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 12),
                    constraints: BoxConstraints(maxHeight: 48),
                    filled: true,
                    fillColor: Colors.white,
                    hintText: '$brithday',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 254,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 351,
                    height: 48,
                    alignment: Alignment.center,
                    child: Text(
                      "Продолжить",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 94, 40, 144),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
