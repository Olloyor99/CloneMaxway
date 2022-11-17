import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Myspisok extends StatelessWidget {
  const Myspisok({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 12, left: 12, right: 12),
              child: Container(
                height: 88,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Container(
                      width: 196,
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Заказ №64  ",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            "69 500 сум  ",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            "19.03.2021    ",
                            style: TextStyle(
                              color: Color.fromRGBO(129, 140, 153, 1),
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    Container(
                      child:
                          SvgPicture.asset('assets/profile_icons/forward.svg'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
