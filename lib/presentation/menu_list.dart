import 'package:flutter/material.dart';

class MenuList extends StatefulWidget {
  const MenuList({Key? key}) : super(key: key);

  @override
  _MenuListState createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Text("List 1"),
              Text("List 1"),
              Text("List 1"),
              Text("List 1"),
              Text("List 1"),
              Text("List 1"),
              Text("List 1"),
              Text("List 1"),
            ],
          ),
        ),
      ),
    );
  }
}
