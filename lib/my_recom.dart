import 'package:flutter/material.dart';
import 'package:maxway_/list_name_price/text.dart';
import 'package:maxway_/recomment2.dart';

class MyRecoment extends StatefulWidget {
  @override
  State<MyRecoment> createState() => _MyRecomentState();
}

class _MyRecomentState extends State<MyRecoment> {
  String one = "Рамазан-сет";
  String two = "Донар Блюдо";
  String three = "Хот дог";
  List photo = ['assets/rec.png', 'assets/rec1.png', 'assets/rec3.png'];

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            height: 130,
            margin: EdgeInsets.only(left: 6, right: 6),
            child: Column(children: [
              Container(
                color: Color.fromRGBO(248, 246, 250, 1),
                alignment: Alignment.centerLeft,
                child: Text(
                  "  Рекомендуем ",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                color: Color.fromRGBO(248, 246, 250, 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Myrec2(
                                      name: one,
                                      text: sale,
                                      photo: photo[0],
                                    ))));
                      },
                      child: Container(
                        height: 88,
                        width: 112,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage('assets/rec.png'),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Myrec2(
                                      name: two,
                                      text: two,
                                      photo: photo[1],
                                    ))));
                      },
                      child: Container(
                        height: 88,
                        width: 112,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage('assets/rec1.png'),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Myrec2(
                                      name: three,
                                      text: three,
                                      photo: photo[2],
                                    ))));
                      },
                      child: Container(
                        height: 88,
                        width: 112,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            image: AssetImage('assets/rec3.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          );
        },
        childCount: 1,
      ),
    );
  }
}
