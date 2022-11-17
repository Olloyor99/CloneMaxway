import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:maxway_/list_name_price/narxlari.dart';
import 'customhome.dart';

class MyKorzina extends StatefulWidget {
  List? shtuk2 = List.generate(50, (index) => 0);
  int? korzina2;
  int? forlist;
  MyKorzina({Key? key, this.shtuk2, this.korzina2, this.forlist})
      : super(key: key);
  @override
  State<MyKorzina> createState() => MyKorzinaState();
}

class MyKorzinaState extends State<MyKorzina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8F6FA),
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, 'my_home');
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
          IconButton(
            onPressed: () {
              showCupertinoDialog(
                  context: context,
                  builder: (context) {
                    return CupertinoAlertDialog(
                      title: Text("Внимание !"),
                      actions: [
                        CupertinoDialogAction(
                          child: Text("Отменить"),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        CupertinoDialogAction(
                          child: Text("Да"),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => MyCustomScroll())));
                          },
                        ),
                      ],
                    );
                  });
            },
            icon: SvgPicture.asset('assets/profile_icons/delete.svg'),
          ),
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
                itemCount: widget.forlist,
                itemBuilder: ((context, index) => Container(
                      height: 120,
                      width: 339,
                      margin:
                          EdgeInsets.only(top: 2, bottom: 2, left: 3, right: 3),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 242, 239, 239),
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        children: [
                          Container(
                            height: 96,
                            width: 96,
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(left: 5),
                            child: Text("Photo"),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 125,
                                    height: 18,
                                    margin: EdgeInsets.only(top: 12, left: 8),
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
                                          color:
                                              Color.fromARGB(255, 94, 40, 144),
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
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.remove_outlined,
                                        color: Colors.grey[700],
                                        size: 17,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Text(
                                    "1",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(width: 12),
                                  Container(
                                    height: 32,
                                    width: 32,
                                    transformAlignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.add,
                                        color: Colors.grey[700],
                                        size: 17,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 150,
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
            ),
            Container(
              height: 56,
              margin: EdgeInsets.only(left: 12, right: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12)),
              ),
              child: Container(
                margin: EdgeInsets.only(top: 3, left: 2, right: 2, bottom: 2),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 242, 239, 239),
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                      child: Text(
                        "Сумма заказа",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 65,
                    ),
                    Container(
                      width: 150,
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(right: 12),
                      child: Text(
                        "${widget.korzina2} cум",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
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
