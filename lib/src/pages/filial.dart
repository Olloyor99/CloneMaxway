import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyFilial extends StatelessWidget {
  const MyFilial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Филиали",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
        ),
      ),
      body: Center(
        child: Container(
          color: Color.fromRGBO(247, 247, 247, 1),
          child: Column(
            children: [
              SizedBox(
                height: 12,
              ),
              Container(
                height: 300,
                margin: EdgeInsets.only(left: 12, right: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 180,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/filial1.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: 351,
                      margin: EdgeInsets.only(left: 12),
                      child: Text(
                        "Magic City",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      width: 351,
                      margin: EdgeInsets.all(12),
                      child: Text(
                        " 174 Bobur  kochasi ,Toshkent 1000129",
                        style:
                            TextStyle(color: Color.fromRGBO(134, 134, 134, 1)),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 12),
                        Container(
                          height: 28,
                          width: 132,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(81, 38, 125, 0.05),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 13,
                              ),
                              SvgPicture.asset('assets/icons/clock.svg'),
                              Text(
                                " 09:00 - 23:00",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromRGBO(81, 38, 125, 1)),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 28,
                          width: 163,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(81, 38, 125, 0.05),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 13,
                              ),
                              SvgPicture.asset('assets/icons/phone.svg'),
                              Text(
                                " +998 99 859 91 70",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromRGBO(81, 38, 125, 1)),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 300,
                margin: EdgeInsets.only(left: 12, right: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 180,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/filial1.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: 351,
                      margin: EdgeInsets.only(left: 12),
                      child: Text(
                        "MaxWay I Xadra",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      width: 351,
                      margin: EdgeInsets.all(12),
                      child: Text(
                        " 30 Navoiy shoh kochasi ,Toshkent 1000129",
                        style:
                            TextStyle(color: Color.fromRGBO(134, 134, 134, 1)),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 12),
                        Container(
                          height: 28,
                          width: 132,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(81, 38, 125, 0.05),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 13,
                              ),
                              SvgPicture.asset('assets/icons/clock.svg'),
                              Text(
                                " 09:00 - 23:00",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromRGBO(81, 38, 125, 1)),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 28,
                          width: 163,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(81, 38, 125, 0.05),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 13,
                              ),
                              SvgPicture.asset('assets/icons/phone.svg'),
                              Text(
                                " +998 99 859 91 70",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromRGBO(81, 38, 125, 1)),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
