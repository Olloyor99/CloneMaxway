import '../../list_name_price/narxlari.dart';

int jami = 0;
int korzina = 0;
int allValuePlus = 0;

List<int> shtuk = List.generate(lavashnarxi.length, (index) => 0);
List<bool> withOpasity = List.generate(lavashnarxi.length, (index) => false);
List<int> aloneValue = List.generate(lavashnarxi.length, (index) => 0);
