import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyRegTwo extends StatelessWidget {
  const MyRegTwo({super.key});

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
          "Имя фамилия",
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
              SizedBox(height: 16),
              Container(
                height: 24,
                alignment: Alignment.centerLeft,
                child: Text(
                  "Имя Фамилия",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 48),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 12),
                  constraints: BoxConstraints(maxHeight: 48),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Введите ваш имя ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 129),
              Text("Создавая аккаунт, вы принимайте"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Text(
                      "Условия использавания",
                      style: TextStyle(color: Color.fromARGB(255, 94, 40, 144)),
                    ),
                  ),
                  Text(" MaxWay"),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              GestureDetector(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
