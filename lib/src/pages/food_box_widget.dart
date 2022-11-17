// import 'package:flutter/material.dart';
// import 'package:maxway_/src/pdoduct_name/list_name_price/narxlari.dart';
// import 'package:maxway_/src/pdoduct_name/variables.dart';

// class FoodBoxWidget extends StatefulWidget {
//   const FoodBoxWidget({super.key});

//   @override
//   State<FoodBoxWidget> createState() => _FoodBoxWidgetState();
// }

// class _FoodBoxWidgetState extends State<FoodBoxWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedContainer(
//                     duration: Duration(milliseconds: 400),
//                     curve: Curves.bounceInOut,
//                     margin: withOpasity[index]
//                         ? EdgeInsets.all(15)
//                         : EdgeInsets.all(12),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: Column(
//                       children: [
//                         Container(
//                           height: 124,
//                           width: 170,
//                           decoration: BoxDecoration(
//                               color: Colors.grey,
//                               image: DecorationImage(
//                                   image: AssetImage('assets/rec.png'),
//                                   fit: BoxFit.cover),
//                               borderRadius: BorderRadius.circular(12)),
//                           child: shtuk[index] >= 1
//                               ? Container(
//                                   height: 124,
//                                   width: 170,
//                                   alignment: Alignment.center,
//                                   decoration: BoxDecoration(
//                                     color: withOpasity[index]
//                                         ? Colors.black.withOpacity(0.3)
//                                         : Colors.transparent,
//                                     borderRadius: BorderRadius.circular(12),
//                                   ),
//                                   child: Column(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Text(
//                                         shtuk[index].toString(),
//                                         style: TextStyle(
//                                             fontSize: 20,
//                                             color: withOpasity[index]
//                                                 ? Colors.white
//                                                 : Colors.transparent,
//                                             fontWeight: FontWeight.w700),
//                                       ),
//                                       Text(
//                                         "${aloneValue[index].toString()} so'm",
//                                         style: TextStyle(
//                                             fontSize: 20,
//                                             color: withOpasity[index]
//                                                 ? Colors.white
//                                                 : Colors.transparent,
//                                             fontWeight: FontWeight.w400),
//                                       ),
//                                     ],
//                                   ),
//                                 )
//                               : null,
//                         ),
//                         Row(
//                           children: [
//                             Container(
//                               height: 50,
//                               alignment: Alignment.center,
//                               child: Text(
//                                 "  ${lavashnomi[index]}",
//                                 style: TextStyle(
//                                     fontSize: 15, fontWeight: FontWeight.w600),
//                               ),
//                             ),
//                           ],
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             GestureDetector(
//                               onTap: () {
//                                 setState(() {
//                                   shtuk[index]++;
//                                   jami += lavashnarxi[index];
//                                   korzina = jami;
//                                   withOpasity[index] = !withOpasity[index];
//                                   shtuk[index] > 0
//                                       ? allValuePlus += shtuk[index]
//                                       : 0;
//                                   aloneValue[index] += lavashnarxi[index];

//                                   Timer.periodic(Duration(milliseconds: 800),
//                                       (timer) {
//                                     if (withOpasity[index] =
//                                         withOpasity[index]) {
//                                       setState(() {
//                                         withOpasity[index] =
//                                             !withOpasity[index];
//                                       });
//                                     }
//                                   });
//                                 });
//                               },
//                               child: AnimatedContainer(
//                                 height: 40,
//                                 width: shtuk[index] > 0 ? 0 : 154,
//                                 alignment: Alignment.center,
//                                 duration: Duration(seconds: 0),
//                                 decoration: BoxDecoration(
//                                   color: Color.fromRGBO(248, 246, 250, 1),
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 child: Text(
//                                   lavashnarxi[index].toString(),
//                                   style: TextStyle(
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.w400),
//                                 ),
//                               ),
//                             ),
//                             shtuk[index] > 0
//                                 ? Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceAround,
//                                     children: [
//                                       GestureDetector(
//                                         onTap: () {
//                                           setState(() {
//                                             shtuk[index]--;
//                                             jami -= lavashnarxi[index];
//                                             korzina = jami;
//                                             withOpasity[index] =
//                                                 !withOpasity[index];
//                                             shtuk[index] == 0
//                                                 ? allValuePlus -= 1
//                                                 : 0;
//                                             aloneValue[index] -=
//                                                 lavashnarxi[index];

//                                             Timer.periodic(
//                                                 Duration(milliseconds: 800),
//                                                 (timer) {
//                                               if (withOpasity[index] =
//                                                   withOpasity[index]) {
//                                                 setState(() {
//                                                   withOpasity[index] =
//                                                       !withOpasity[index];
//                                                 });
//                                               }
//                                             });
//                                           });
//                                         },
//                                         child: Container(
//                                           height: 40,
//                                           width: 40,
//                                           alignment: Alignment.center,
//                                           child: Text("-",
//                                               style: TextStyle(fontSize: 15)),
//                                           decoration: BoxDecoration(
//                                             color: Color.fromRGBO(
//                                                 248, 246, 250, 1),
//                                             borderRadius:
//                                                 BorderRadius.circular(12),
//                                           ),
//                                         ),
//                                       ),
//                                       Container(
//                                         width: 74,
//                                         alignment: Alignment.center,
//                                         child: Text(
//                                           shtuk[index].toString(),
//                                           style: TextStyle(fontSize: 15),
//                                         ),
//                                       ),
//                                       GestureDetector(
//                                         onTap: () {
//                                           setState(() {
//                                             shtuk[index]++;
//                                             jami += lavashnarxi[index];
//                                             korzina = jami;
//                                             withOpasity[index] =
//                                                 !withOpasity[index];
//                                             aloneValue[index] +=
//                                                 lavashnarxi[index];

//                                             Timer.periodic(
//                                                 Duration(milliseconds: 800),
//                                                 (timer) {
//                                               if (withOpasity[index] =
//                                                   withOpasity[index]) {
//                                                 setState(() {
//                                                   withOpasity[0] =
//                                                       !withOpasity[0];
//                                                 });
//                                               }
//                                             });
//                                           });
//                                         },
//                                         child: Container(
//                                           height: 40,
//                                           width: 40,
//                                           alignment: Alignment.center,
//                                           child: Text(
//                                             "+",
//                                             style: TextStyle(fontSize: 15),
//                                           ),
//                                           decoration: BoxDecoration(
//                                             color: Color.fromRGBO(
//                                                 248, 246, 250, 1),
//                                             borderRadius:
//                                                 BorderRadius.circular(12),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   )
//                                 : Container(height: 0),
//                           ],
//                         ),
//                       ],
//                     ),
//                   );
//   }
// }