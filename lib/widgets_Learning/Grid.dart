import 'package:flutter/material.dart';

class GridVIew extends StatefulWidget {
  const GridVIew({super.key});

  @override
  State<GridVIew> createState() => _GridVIewState();
}

class _GridVIewState extends State<GridVIew> {
  List<String> contacts = [
    "Tanjiro",
    "Giyuu",
    "shinobu",
    "Nezuko",
    "insoku",
    "muichiro",
    "zenitsu",
    "misuri",
    "rengoku"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(("Grid VIew")),
          centerTitle: true,
        ),
        body: Container(
          //     child: GridView(
          //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 2, crossAxisSpacing: 12, mainAxisSpacing: 12),
          //   children: [
          //     Card(
          //       child: Image.asset("assets/hashira/giyuu.jpg"),
          //     ),
          //     Card(
          //       child: Image.asset("assets/hashira/giyuu.jpg"),
          //     ),
          //     Card(
          //       child: Image.asset("assets/hashira/giyuu.jpg"),
          //     ),
          //     Card(
          //       child: Image.asset("assets/hashira/giyuu.jpg"),
          //     ),
          //     Card(
          //       child: Image.asset("assets/hashira/giyuu.jpg"),
          //     ),
          //     Card(
          //       child: Image.asset("assets/hashira/giyuu.jpg"),
          //     ),
          //   ],
          // ),
          child: GridView.builder(
            itemCount: contacts.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Card(
                child: Center(child: Text(contacts[index])),
              );
            },
          ),
        ));
  }
}
