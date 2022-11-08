import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyRegstrationOne extends StatefulWidget {
  const MyRegstrationOne({super.key});

  @override
  State<MyRegstrationOne> createState() => _MyRegstrationState();
}

class _MyRegstrationState extends State<MyRegstrationOne> {
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
          "Номер телефона",
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
              SizedBox(height: 88),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 12),
                  constraints: BoxConstraints(maxHeight: 48),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Введите номер телефона',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(
                height: 181,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'reg2');
                },
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
    );
  }
}
