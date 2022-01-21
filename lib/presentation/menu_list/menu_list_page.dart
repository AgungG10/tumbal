import 'dart:html';

import 'package:flutter/material.dart';
import 'package:tumbal/presentation/item_detail/item_detail_page.dart';

class MenuListPage extends StatefulWidget {
  const MenuListPage({Key? key}) : super(key: key);

  @override
  _MenuListPageState createState() => _MenuListPageState();
}

class _MenuListPageState extends State<MenuListPage> {
  List<String> ListGambar = [
    'assets/images/1.jpg',
    'assets/images/11.jpg',
    'assets/images/0.jpg',
    'assets/images/b.jpg',
    'assets/images/g.png',
    'assets/images/n.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: GridView.builder(
            itemCount: ListGambar.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                // print("Mengklik Data "+ ListGambar[index]);
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context)=>
                    ItemDetailPage(gamar: ListGambar[index],)
                    ),
                  );
              },
              child: ListImageItem(
                ListGambar: ListGambar[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ListImageItem extends StatelessWidget {
  const ListImageItem({
    Key? key,
    required this.ListGambar,
  }) : super(key: key);

  final String ListGambar;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Image.asset(
        ListGambar,
        fit: BoxFit.cover,
      ),
    );
  }
}
