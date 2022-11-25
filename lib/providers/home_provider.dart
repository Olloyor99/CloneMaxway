import 'package:flutter/material.dart';
import '../src/list_name_price/narxlari.dart';

class MyHomeProvider with ChangeNotifier {
  List<int> shtuk = List.generate(lavashnarxi.length, (index) => 0);
  int allValuePlus = 0;
  int korzina = 0;
}
