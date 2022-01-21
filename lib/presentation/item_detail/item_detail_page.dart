import 'package:flutter/material.dart';


class ItemDetailPage extends StatelessWidget {
  const ItemDetailPage({Key? key, required this.gamar }) : super(key: key);

  final String gamar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 300,
        width: double.infinity,
        child: Image.asset(
          gamar,
          fit:BoxFit.cover)),
    );
  }
}
