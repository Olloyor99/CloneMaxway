import 'package:flutter/material.dart';

class MySearch extends StatefulWidget {
  const MySearch({super.key});

  @override
  State<MySearch> createState() => _MySearchState();
}

class _MySearchState extends State<MySearch> {
  final _searchcontroller = TextEditingController();

  @override
  void initState() {
    setState(() {});

    super.initState();
    _searchcontroller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, left: 12, right: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedContainer(
            width: _searchcontroller.text.isNotEmpty ? 275 : 365,
            height: 40,
            duration: Duration(milliseconds: 0),
            child: TextField(
              controller: _searchcontroller,
              decoration: InputDecoration(
                hintText: "Поиск",
                hintStyle: TextStyle(fontSize: 14),
                contentPadding: EdgeInsets.only(bottom: -5, top: -5),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: const Color.fromRGBO(248, 246, 250, 1),
                suffixIcon: _searchcontroller.text.isEmpty
                    ? Container(width: 0)
                    : IconButton(
                        onPressed: () => _searchcontroller.text.isNotEmpty
                            ? _searchcontroller.text = ' '
                            : null,
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        icon: const Icon(
                          Icons.highlight_off,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 20,
                ),
              ),
            ),
          ),
          _searchcontroller.text.isNotEmpty
              ? Container(
                  height: 40,
                  child: TextButton(
                    onPressed: () {
                      _searchcontroller.clear();
                    },
                    style: TextButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      foregroundColor: Colors.transparent,
                    ),
                    child: Text(
                      "Отменить",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                )
              : Container(width: 0),
        ],
      ),
    );
  }
}
