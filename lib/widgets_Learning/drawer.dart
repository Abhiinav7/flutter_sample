import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 9,
        shadowColor: Colors.blueAccent,
        title: Text("Drawer"),
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 40,
            color: Colors.red,
            fontWeight: FontWeight.w700,
            letterSpacing: 12,
            shadows: [
              Shadow(color: Colors.green, blurRadius: 5, offset: Offset(2, 2))
            ]),
        backgroundColor: Colors.black38,
        shape: RoundedRectangleBorder(
            side: BorderSide(
                color: Colors.red,
                width: 5,
                style: BorderStyle.solid,
                strokeAlign: 0),
            borderRadius: BorderRadius.circular(12)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 40,
                color: Colors.red,
              ))
        ],


      ),
      drawer: Drawer(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        backgroundColor: Colors.green,
        elevation: 18,
        shadowColor: Colors.red,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/demonslayer/insoku.jpg"),
                ),
                accountName: Text("Abhinav"),
                accountEmail: Text("abhinav@gmail.com")),
            ListTile(
              textColor: Colors.white,
              iconColor: Colors.white,
              onTap: () {},
              title: Text(
                "Profile",
                style: TextStyle(fontSize: 30),
              ),
              leading: Icon(
                Icons.person,
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
