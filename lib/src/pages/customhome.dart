import 'dart:async';
import 'package:flutter/material.dart';
import 'package:maxway_/providers/home_provider.dart';
import 'package:maxway_/src/list_name_price/l_photos.dart';
import 'package:maxway_/src/list_name_price/narxlari.dart';
import 'package:maxway_/src/pages/my_korzina.dart';
import 'package:maxway_/src/pages/my_recom.dart';
import 'package:maxway_/src/pages/my_search_widget.dart';
import 'package:maxway_/src/pages/tabbar.dart';
import 'package:provider/provider.dart';

class MyCustomScroll extends StatefulWidget {
  @override
  State<MyCustomScroll> createState() => _MyCatalogContainerState();
}

class _MyCatalogContainerState extends State<MyCustomScroll> {
  int jami = 0;
  //int read.korzina = 0;
  // int read.allValuePlus = 0;

//  List<int> read.shtuk = List.generate(lavashnarxi.length, (index) => 0);
  List<bool> withOpasity = List.generate(lavashnarxi.length, (index) => false);
  List<int> aloneValue = List.generate(lavashnarxi.length, (index) => 0);

  @override
  Widget build(BuildContext context) {
    //List<TabbarTitle> itmes = [];
    final read = context.read<MyHomeProvider>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(color: Colors.white, child: MySearch()),
          SizedBox(height: 16),
          Container(
            color: Color(0xfff8F6FA),
            height: read.korzina == 0 ? 638 : 556,
            child: CustomScrollView(scrollDirection: Axis.vertical, slivers: [
              MyTabbar(),
              MyRecoment(),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Container(
                    child: Text(
                      "   Лаваш ",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                    ),
                  );
                }, childCount: 1),
              ),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 222,
                  mainAxisExtent: 245,
                ),
                delegate: SliverChildBuilderDelegate(
                    childCount: lavashnomi.length, (BuildContext, int index) {
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 400),
                    curve: Curves.bounceInOut,
                    margin: withOpasity[index]
                        ? EdgeInsets.all(15)
                        : EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 124,
                          width: 170,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 236, 230, 242),
                              image: DecorationImage(
                                  image:
                                      AssetImage("${photos[index].toString()}"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(12)),
                          child: read.shtuk[index] >= 1
                              ? Container(
                                  height: 124,
                                  width: 170,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: withOpasity[index]
                                        ? Colors.black.withOpacity(0.3)
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        read.shtuk[index].toString(),
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: withOpasity[index]
                                                ? Colors.white
                                                : Colors.transparent,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        "${aloneValue[index].toString()} so'm",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: withOpasity[index]
                                                ? Colors.white
                                                : Colors.transparent,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                )
                              : null,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 50,
                              alignment: Alignment.center,
                              child: Text(
                                "  ${lavashnomi[index]}",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  read.shtuk[index]++;
                                  jami += lavashnarxi[index];
                                  read.korzina = jami;
                                  withOpasity[index] = !withOpasity[index];
                                  read.shtuk[index] > 0
                                      ? read.allValuePlus += read.shtuk[index]
                                      : 0;
                                  aloneValue[index] += lavashnarxi[index];

                                  Timer.periodic(Duration(milliseconds: 800),
                                      (timer) {
                                    if (withOpasity[index] =
                                        withOpasity[index]) {
                                      setState(() {
                                        withOpasity[index] =
                                            !withOpasity[index];
                                      });
                                    }
                                  });
                                });
                              },
                              child: AnimatedContainer(
                                height: 40,
                                width: read.shtuk[index] > 0 ? 0 : 154,
                                alignment: Alignment.center,
                                duration: Duration(seconds: 0),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(248, 246, 250, 1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text(
                                  lavashnarxi[index].toString(),
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            read.shtuk[index] > 0
                                ? Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            read.shtuk[index]--;
                                            jami -= lavashnarxi[index];
                                            read.korzina = jami;
                                            withOpasity[index] =
                                                !withOpasity[index];
                                            read.shtuk[index] == 0
                                                ? read.allValuePlus -= 1
                                                : 0;
                                            aloneValue[index] -=
                                                lavashnarxi[index];

                                            Timer.periodic(
                                                Duration(milliseconds: 800),
                                                (timer) {
                                              if (withOpasity[index] =
                                                  withOpasity[index]) {
                                                setState(() {
                                                  withOpasity[index] =
                                                      !withOpasity[index];
                                                });
                                              }
                                            });
                                          });
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          alignment: Alignment.center,
                                          child: Text("-",
                                              style: TextStyle(fontSize: 15)),
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                248, 246, 250, 1),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 74,
                                        alignment: Alignment.center,
                                        child: Text(
                                          read.shtuk[index].toString(),
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            read.shtuk[index]++;
                                            jami += lavashnarxi[index];
                                            read.korzina = jami;
                                            withOpasity[index] =
                                                !withOpasity[index];
                                            aloneValue[index] +=
                                                lavashnarxi[index];

                                            Timer.periodic(
                                                Duration(milliseconds: 800),
                                                (timer) {
                                              if (withOpasity[index] =
                                                  withOpasity[index]) {
                                                setState(() {
                                                  withOpasity[0] =
                                                      !withOpasity[0];
                                                });
                                              }
                                            });
                                          });
                                        },
                                        child: Container(
                                          height: 40,
                                          width: 40,
                                          alignment: Alignment.center,
                                          child: Text(
                                            "+",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                248, 246, 250, 1),
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                : Container(height: 0),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ]),
          ),
          read.korzina == 0
              ? Container()
              : Container(
                  height: 72,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      )),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'korzina');
                      //navigateKorzin();
                    },
                    child: Container(
                      height: 48,
                      width: 365,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 94, 40, 144),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 12),
                          CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 142, 138, 136),
                            radius: 15,
                            child: Text(
                              "${read.allValuePlus}",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(width: 100),
                          Text(
                            "Корзина",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Container(
                            width: 145,
                            alignment: Alignment.centerRight,
                            child: Text(
                              "${read.korzina} сум",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }

  // void navigateKorzin() {
  //   Navigator.of(context).push(MaterialPageRoute(
  //     builder: ((context) => MyKorzina(
  //         )),
  //   ));
  // }
}
