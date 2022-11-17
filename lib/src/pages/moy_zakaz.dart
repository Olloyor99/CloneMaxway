import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MoyZakaz extends StatefulWidget {
  const MoyZakaz({super.key});

  @override
  State<MoyZakaz> createState() => _MoyZakazState();
}

class _MoyZakazState extends State<MoyZakaz> with TickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: 113,
              alignment: Alignment(-.9, 1.0),
              child: Text(
                " Мой заказы ",
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 13, right: 13, bottom: 12, top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.91),
                color: Color.fromARGB(255, 236, 235, 238),
              ),
              child: Container(
                height: 28,
                child: Container(
                  margin: EdgeInsets.all(2),
                  child: TabBar(
                    indicator: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6.93),
                    ),
                    controller: tabController,
                    onTap: (value) {},
                    tabs: [
                      Text(
                        "История заказов",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Текущие зазазы",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Color.fromARGB(255, 242, 239, 239),
                child: TabBarView(controller: tabController, children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 144,
                          width: 370,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Container(
                            margin: EdgeInsets.only(left: 12, right: 12),
                            child: SvgPicture.asset(
                                'assets/profile_icons/zakaz.svg'),
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
