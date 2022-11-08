// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class MyProfi extends StatefulWidget {
//   const MyProfi({super.key});

//   @override
//   State<MyProfi> createState() => _MyProfileState();
// }

// class _MyProfileState extends State<MyProfi> {
//   int ok = 10;
//   @override
//   Widget build(BuildContext context) {
//     int withopasiy = 10;
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Column(
//           children: [
//             Text(" $ok mana shunaqa boladi korzina"),
//             ElevatedButton(
//                 onPressed: () {
//                   timerFunc();
//                 },
//                 child: Text("Start"))
//           ],
//         ),
//       ),
//     );
//   }

//   timerFunc() {
//     Timer.periodic(Duration(seconds: 1), (timer) {
//       if (ok > 0) {
//         setState(() {
//           ok--;
//         });
//       }
//     });
//   }
// }
