import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Politica extends StatelessWidget {
  const Politica({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8F6FA),
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
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            Container(
              height: 172,
              alignment: Alignment.center,
              margin: EdgeInsets.only(right: 12, left: 12),
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(children: [
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 327,
                  child: Text(
                    "Мы делаем клиентов счастливыми",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: 327,
                  child: Text(
                    """История компании MaxWay работает на быстрорастущем рынке Республики Узбекистан и ориентирована на удовлетворение растущего спроса рынка. Компания продемонстрировала отличные результаты за последние 4 лет и устойчиво растет за счет основного направления бизнеса: Продукты питания и напитки.
                """,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
