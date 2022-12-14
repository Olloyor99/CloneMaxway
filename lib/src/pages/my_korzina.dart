import 'package:flutter/material.dart';
import 'package:maxway_/providers/home_provider.dart';
import 'package:maxway_/src/list_name_price/l_photos.dart';
import 'package:maxway_/src/list_name_price/narxlari.dart';
import 'package:maxway_/src/pages/customhome.dart';
import 'package:maxway_/src/pages/my_dialog.dart';
import 'package:provider/provider.dart';
import 'my_korzin_two.dart';

class MyKorzina extends StatefulWidget {
  MyKorzina({
    Key? key,
  }) : super(key: key);
  @override
  State<MyKorzina> createState() => MyKorzinaState();
}

class MyKorzinaState extends State<MyKorzina> {
  MyCustomScroll myCustomScroll = MyCustomScroll();
  @override
  Widget build(BuildContext context) {
    final read = context.read<MyHomeProvider>();
    return Scaffold(
      backgroundColor: Color(0xfff8F6FA),
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
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
          "Оформить заказ",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        actions: [
          MyDialog(),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            Container(
              height: 339,
              margin: EdgeInsets.only(left: 12, right: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    topLeft: Radius.circular(12)),
              ),
              child: ListView.builder(
                itemCount: read.allValuePlus,
                itemBuilder: ((context, index) => Container(
                      height: 126,
                      width: 339,
                      margin:
                          EdgeInsets.only(top: 2, bottom: 2, left: 3, right: 3),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 96,
                                width: 96,
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(left: 5),
                                child: Image.asset(photos[index]),
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 125,
                                        height: 18,
                                        margin: EdgeInsets.only(top: 12),
                                        child: Text(
                                          "${lavashnomi[index].toString()}",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Container(
                                        width: 100,
                                        height: 18,
                                        alignment: Alignment.centerRight,
                                        margin: EdgeInsets.only(
                                          top: 12,
                                          left: 12,
                                        ),
                                        child: Text(
                                          "${lavashnarxi[index].toString()}, sum",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 94, 40, 144),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 48,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(width: 12),
                                      Container(
                                        height: 32,
                                        width: 32,
                                        transformAlignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                246, 248, 251, 1),
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: IconButton(
                                          onPressed: () {
                                            read.shtuk[index]--;
                                            setState(() {});
                                          },
                                          icon: Icon(
                                            Icons.remove_outlined,
                                            color: Colors.grey[700],
                                            size: 17,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 12),
                                      Text(
                                        " ${read.shtuk[index].toString()} ",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        height: 32,
                                        width: 32,
                                        transformAlignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                246, 248, 251, 1),
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: IconButton(
                                          onPressed: () {
                                            read.shtuk[index]++;
                                            setState(() {});
                                          },
                                          icon: Icon(
                                            Icons.add,
                                            color: Colors.grey[700],
                                            size: 17,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 140,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.black,
                            thickness: .1,
                          ),
                        ],
                      ),
                    )),
              ),
            ),
            My_korzin_two(widget: widget),
            SizedBox(height: 230),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'regstrationone');
              },
              child: Container(
                width: 351,
                height: 48,
                alignment: Alignment.center,
                child: Text(
                  "Оформить заказ",
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
    );
  }
}
