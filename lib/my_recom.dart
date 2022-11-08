import 'package:flutter/material.dart';

class MyRecoment extends StatefulWidget {
  const MyRecoment({super.key});

  @override
  State<MyRecoment> createState() => _MyRecomentState();
}

class _MyRecomentState extends State<MyRecoment> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          color: Color.fromRGBO(248, 246, 250, 1),
          alignment: Alignment.centerLeft,
          child: Text(
            "  Рекомендуем ",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
        Container(
          color: Color.fromRGBO(248, 246, 250, 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
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
        )
      ],
    );
  }
}
