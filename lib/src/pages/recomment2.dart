import 'package:flutter/material.dart';

class Myrec2 extends StatelessWidget {
  String? text;
  String? name;
  String? photo;

  Myrec2({this.text, this.name, this.photo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(248, 246, 250, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        automaticallyImplyLeading: false,
        title: Text(
          "Акции",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
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
                    height: 140,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(photo.toString()),
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
                      name!,
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    width: 351,
                    margin: EdgeInsets.all(12),
                    child: Text(text.toString()),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
