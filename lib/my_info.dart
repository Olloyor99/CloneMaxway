import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyInfo extends StatefulWidget {
  const MyInfo({super.key});

  @override
  State<MyInfo> createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
  String name = "Olloyor";
  int number = 23;
  int age = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 239, 239),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
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
      body: Center(
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
                  // focusedBorder:,
                  hintText: '$name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 94, 40, 144),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 24),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(" Номер телефона"),
              ),
              SizedBox(height: 4),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 12),
                  constraints: BoxConstraints(maxHeight: 48),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: '$number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
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
                  hintText: '$age',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
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
