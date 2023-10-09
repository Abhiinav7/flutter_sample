import 'package:flutter/material.dart';

class BotNavBar extends StatefulWidget {
  const BotNavBar({super.key});

  @override
  State<BotNavBar> createState() => _BotNavBarState();
}

class _BotNavBarState extends State<BotNavBar> {
  int indexN = 0;
  List BarWid = [
    Icon(
      Icons.home,
      size: 40,
    ),
    Icon(
      Icons.person,
      size: 40,
    ),
    Icon(
      Icons.settings,
      size: 40,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: BarWid.elementAt(indexN)),
      bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 10,
          showSelectedLabels: false,
          showUnselectedLabels: true,
          iconSize: 30,
          currentIndex: indexN,
          // backgroundColor: Colors.black45,
          onTap: (int index) {
            setState(() {
              indexN = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              backgroundColor: Colors.white54,
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              backgroundColor: Colors.white,
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              backgroundColor: Colors.white,
              label: "Home",
            )
          ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: FloatingActionButton(
      //   tooltip: "hy",
      //   mini: true,
      //   onPressed: (){},
      // ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: Text("share"),
          icon: Icon(
            Icons.add,
          )),
    );
  }
}
