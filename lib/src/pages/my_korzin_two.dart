import 'package:flutter/material.dart';
import 'package:maxway_/providers/home_provider.dart';
import 'package:provider/provider.dart';
import 'my_korzina.dart';

class My_korzin_two extends StatelessWidget {
  const My_korzin_two({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final MyKorzina widget;

  @override
  Widget build(BuildContext context) {
    final read = context.read<MyHomeProvider>();
    return Container(
      height: 60,
      margin: EdgeInsets.only(left: 12, right: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(12),
          bottomLeft: Radius.circular(12),
        ),
      ),
      child: Column(
        children: [
          Divider(
            color: Colors.black,
            thickness: .1,
          ),
          Container(
            margin: EdgeInsets.only(top: 7, left: 2, right: 2, bottom: 2),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
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
                    "${read.korzina} cум",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
