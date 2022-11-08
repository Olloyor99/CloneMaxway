import 'dart:async';
import 'package:flutter/material.dart';
import 'package:maxway_/list_name_price/narxlari.dart';
import 'package:maxway_/my_korzina.dart';

class MyCatalogKlab extends StatefulWidget {
  @override
  State<MyCatalogKlab> createState() => _MyCatalogContainerState();
}

class _MyCatalogContainerState extends State<MyCatalogKlab> {
  int jami = 0;
  int korzina = 0;
  int allValuePlus = 0;

  List<int> shtuk = List.generate(klabsendvichnarxi.length, (index) => 0);
  List<bool> withOpasity =
      List.generate(klabsendvichnarxi.length, (index) => false);
  List<int> aloneValue = List.generate(klabsendvichnarxi.length, (index) => 0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: korzina == 0 ? 450 : 360,
          margin: EdgeInsets.only(top: 10),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 245, crossAxisCount: 2),
              itemCount: klabsendvichnarxi.length,
              itemBuilder: (BuildContext context, int index) {
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
                            color: Colors.grey,
                            image: DecorationImage(
                                image: AssetImage('assets/rec.png'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(12)),
                        child: shtuk[index] >= 1
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
                                      shtuk[index].toString(),
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
                              klabsendvichnomi[index],
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
                                shtuk[index]++;
                                jami += klabsendvichnarxi[index];
                                korzina = jami;
                                withOpasity[index] = !withOpasity[index];
                                shtuk[index] > 0
                                    ? allValuePlus += shtuk[index]
                                    : 0;
                                aloneValue[index] += klabsendvichnarxi[index];

                                Timer.periodic(Duration(milliseconds: 800),
                                    (timer) {
                                  if (withOpasity[index] = withOpasity[index]) {
                                    setState(() {
                                      withOpasity[index] = !withOpasity[index];
                                    });
                                  }
                                });
                              });
                            },
                            child: AnimatedContainer(
                              height: 40,
                              width: shtuk[index] > 0 ? 0 : 154,
                              alignment: Alignment.center,
                              duration: Duration(seconds: 0),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(248, 246, 250, 1),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                klabsendvichnarxi[index].toString(),
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          shtuk[index] > 0
                              ? Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          shtuk[index]--;
                                          jami -= klabsendvichnarxi[index];
                                          korzina = jami;
                                          withOpasity[index] =
                                              !withOpasity[index];
                                          shtuk[index] == 0
                                              ? allValuePlus -= 1
                                              : 0;
                                          aloneValue[index] -=
                                              klabsendvichnarxi[index];

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
                                          color:
                                              Color.fromRGBO(248, 246, 250, 1),
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 74,
                                      alignment: Alignment.center,
                                      child: Text(
                                        shtuk[index].toString(),
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          shtuk[index]++;
                                          jami += klabsendvichnarxi[index];
                                          korzina = jami;
                                          withOpasity[index] =
                                              !withOpasity[index];
                                          aloneValue[index] +=
                                              klabsendvichnarxi[index];

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
                                          color:
                                              Color.fromRGBO(248, 246, 250, 1),
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
        Container(
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
              navigateKorzin();
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
                      "$allValuePlus",
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
                      "$korzina сум",
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
    );
  }

  void navigateKorzin() {
    Navigator.of(context).push(MaterialPageRoute(
        builder: ((context) => MyKorzina(
              shtuk2: [shtuk],
              korzina2: korzina,
              forlist: allValuePlus,
            ))));
  }
}
